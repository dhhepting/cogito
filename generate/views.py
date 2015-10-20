from django.core.urlresolvers import reverse
from django.shortcuts import render, get_object_or_404
from django import template
from django.template import loader, Context
from django.utils import timezone
from django.views import generic
from django.http import HttpResponse, HttpResponseRedirect

import subprocess, sys, random

from .models import Parameter, Value, Combination

def gen_screen():

    p0 = ['bezier', 'csplines', 'unique']
    p1 = [ 0.05, 0.15, 0.25, 0.35, 0.45, 0.55, 0.65, 0.75, 0.85, 0.95 ]
    p2 = [ 0.05, 0.15, 0.25, 0.35, 0.45, 0.55, 0.65, 0.75, 0.85, 0.95 ]
    parms = [ p0, p1, p2 ]
    seq = 0
    seq_index = 0
    ns_index = 0
    ctxt = Context()
    tmpl = loader.get_template('simple_curve.gp')
    for i in range(8):
        for j in range(len(parms)):
            if j == seq:
                ctxt['p'+str(j)] = str((parms[j])[seq_index])
                seq_index += 1
                seq_index %= len(parms[j])
            else:
                ns_index = random.randrange(len(parms[j]))
                ctxt['p'+str(j)] = str((parms[j])[ns_index])
        cfname = 'generate/' + ctxt['p0'] + '-' + ctxt['p1'] + '-' + ctxt['p2'] + '.png'
        print (cfname)
        c = Combination(combination=cfname)
        c.save()

        with open('t.gp', 'w') as fpout:
            fpout.write(tmpl.render(ctxt))
        subprocess.run(["/usr/local/bin/gnuplot", "t.gp"], check=True)

# Create your views here.

class IndexView(generic.ListView):
    template_name = 'generate/index.html'
    context_object_name = 'parameter_list'

    def get_queryset(self):
        """Return the last five published questions."""
        return Parameter.objects.all()

class DetailView(generic.DetailView):
    model = Parameter
    template_name = 'generate/detail.html'

class ResultsView(generic.DetailView):
    model = Parameter
    template_name = 'generate/results.html'

class ScreenView(generic.ListView):
    template_name = 'generate/screen.html'
    context_object_name = 'combination_list'
    #gen_screen()

    def get_queryset(self):
        """Return the last five published questions."""
        return Combination.objects.all()[:8]
	


