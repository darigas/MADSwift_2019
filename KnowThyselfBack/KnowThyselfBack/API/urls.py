from django.urls import path
from .views import types, runtest, quadras, typesShort

urlpatterns = [
    path('types', types),
    path('test', runtest),
    path('quadras', quadras),
    path('types_short', typesShort)
]
