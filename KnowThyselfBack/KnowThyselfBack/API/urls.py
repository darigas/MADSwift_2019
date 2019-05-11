from django.urls import path
from .views import types, runtest

urlpatterns = [
    path('types', types),
    path('test', runtest)
]
