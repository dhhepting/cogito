from django.http import HttpResponse
from django.shortcuts import render


def index(request):
    user = request.user
    context = {}
    if (user.is_authenticated()):
        context = { "real" : True }
    return render(request, 'cogito/index.html', context)
