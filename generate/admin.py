from django.contrib import admin
from .models import Parameter, Value, Combination

# Register your models here.

class ValueInline(admin.TabularInline):
    model = Value
    extra = 3

class ParameterAdmin(admin.ModelAdmin):
    inlines = [ValueInline]

admin.site.register(Parameter, ParameterAdmin)
admin.site.register(Value)
admin.site.register(Combination)
