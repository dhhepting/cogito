from django.db import models

# Create your models here.

class Parameter(models.Model):
        parameter_name = models.CharField(max_length=200)
        pub_date = models.DateTimeField('date published')
        def __str__(self):
            return self.parameter_name

class Value(models.Model):
        parameter = models.ForeignKey(Parameter)
        value = models.CharField(max_length=200)
        votes = models.IntegerField(default=0)
        def __str__(self):
            return self.value

class Combination(models.Model):
        combination = models.CharField(max_length=512)
        def __str__(self):
            return self.combination
