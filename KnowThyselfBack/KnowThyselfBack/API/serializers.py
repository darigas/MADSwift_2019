from rest_framework import serializers
from .models import Type, Test, TypeResult, Quadra, TypeShort


class TypeSerializer(serializers.ModelSerializer):
    class Meta:
        model = Type
        fields = '__all__'


class TestSerializer(serializers.ModelSerializer):
    class Meta:
        model = Test
        fields = '__all__'


class TypeResultSerializer(serializers.ModelSerializer):
    class Meta:
        model = TypeResult
        fields = '__all__'


class QuadraSerializer(serializers.ModelSerializer):
    class Meta:
        model = Quadra
        fields = '__all__'


class TypeShortSerializer(serializers.ModelSerializer):
    class Meta:
        model = TypeShort
        fields = '__all__'

