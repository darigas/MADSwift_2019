from django.http import JsonResponse
from django.shortcuts import render
from bs4 import BeautifulSoup
from rest_framework.decorators import api_view
from .models import Type, Quadra, TypeShort, TypeTest
from .serializers import TypeSerializer, TestSerializer, TypeShortSerializer, QuadraSerializer, TypeTestSerializer
from rest_framework.response import Response
from rest_framework.settings import api_settings
from rest_framework.renderers import JSONRenderer
from .tests import Click
from django.http import HttpResponse, JsonResponse


@api_view(['GET'])
def types(request):
    if request.method == 'GET':
        types = Type.objects.all()
        serializer = TypeSerializer(types, many=True)
        return Response(serializer.data)


@api_view(['POST', 'GET'])
def runtest(request):
    if request.method == "POST":
        serializer = TestSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            Click(serializer.data['_1'], serializer.data['_2'], serializer.data['_3'], serializer.data['_4'],
                  serializer.data['_5'], serializer.data['_6'], serializer.data['_7'], serializer.data['_8'],
                  serializer.data['_9'], serializer.data['_10'], serializer.data['_11'], serializer.data['_12'],
                  serializer.data['_13'], serializer.data['_14'], serializer.data['_15'], serializer.data['_16'],
                  serializer.data['_17'], serializer.data['_18'], serializer.data['_19'], serializer.data['_20'],
                  serializer.data['_21'], serializer.data['_22'], serializer.data['_23'], serializer.data['_24'],
                  serializer.data['_25'], serializer.data['_26'], serializer.data['_27'], serializer.data['_28'])
            print(Click.type_result)
            return HttpResponse(Click.type_result)
        return HttpResponse(Click.type_result)


@api_view(['GET'])
def quadras(request):
    if request.method == "GET":
        quadras = Quadra.objects.all()
        serializer = QuadraSerializer(quadras, many=True)
        return Response(serializer.data)


@api_view(['GET'])
def typesShort(request):
    if request.method == "GET":
        types = TypeShort.objects.all()
        serializer = TypeShortSerializer(types, many=True)
        return Response(serializer.data)


@api_view(['GET', 'POST'])
def types_test(request):
    if request.method == "GET":
        types_test = TypeTest.objects.all()
        serializer = TypeTestSerializer(types_test, many=True)
        return Response(serializer.data)

    if request.method == "POST":
        serializer = TypeTestSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.data)
