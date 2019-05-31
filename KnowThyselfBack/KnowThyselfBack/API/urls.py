from django.urls import path
from .views import types, runtest, quadras, typesShort, types_test

urlpatterns = [
    path('types', types),
    path('test', runtest),
    path('quadras', quadras),
    path('types_short', typesShort),
    path('types_test', types_test),
]
