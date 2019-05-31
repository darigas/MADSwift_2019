from django.db import models


class TypeManager(models.Model):
    def create_type(self, name, description):
        type = self.create(name=name, description=description)
        return type


class Type(models.Model):
    name = models.CharField(max_length=255)
    description = models.TextField(blank=False)

    objects = TypeManager()

    def __str__(self):
        return self.name


class TestManager(models.Model):
    def create(self):
        test = self.create()
        return self


class Test(models.Model):
    _1 = models.BooleanField(default=False)
    _2 = models.BooleanField(default=False)
    _3 = models.BooleanField(default=False)
    _4 = models.BooleanField(default=False)
    _5 = models.BooleanField(default=False)
    _6 = models.BooleanField(default=False)
    _7 = models.BooleanField(default=False)
    _8 = models.BooleanField(default=False)
    _9 = models.BooleanField(default=False)
    _10 = models.BooleanField(default=False)
    _11 = models.BooleanField(default=False)
    _12 = models.BooleanField(default=False)
    _13 = models.BooleanField(default=False)
    _14 = models.BooleanField(default=False)
    _15 = models.BooleanField(default=False)
    _16 = models.BooleanField(default=False)
    _17 = models.BooleanField(default=False)
    _18 = models.BooleanField(default=False)
    _19 = models.BooleanField(default=False)
    _20 = models.BooleanField(default=False)
    _21 = models.BooleanField(default=False)
    _22 = models.BooleanField(default=False)
    _23 = models.BooleanField(default=False)
    _24 = models.BooleanField(default=False)
    _25 = models.BooleanField(default=False)
    _26 = models.BooleanField(default=False)
    _27 = models.BooleanField(default=False)
    _28 = models.BooleanField(default=False)

    objects = TestManager()


class TypeResultManager(models.Model):
    def create(self):
        type_result = self.create()
        return type_result


class TypeResult(models.Model):
    type = models.CharField(max_length=255)

    objects = TypeResultManager()


class QuadraManager(models.Model):
    def create(self):
        quadra = self.create()
        return quadra


class Quadra(models.Model):
    quadraName = models.CharField(max_length=255)
    info = models.TextField(blank=False)
    types = models.TextField(blank=False)

    def __str__(self):
        return self.quadraName

    objects = QuadraManager()



class TypeShortManager(models.Model):
    def create(self):
        type_short = self.create()
        return type_short


class TypeShort(models.Model):
    name = models.CharField(max_length=255)
    shortDescription = models.TextField(blank=False)

    def __str__(self):
        return self.name

    objects = TypeShortManager


class TypeTestManager(models.Model):
    def create(self):
        type_test = self.create()
        return type_test


class TypeTest(models.Model):
    _1 = models.BooleanField(default=False)
    _2 = models.BooleanField(default=False)
    _3 = models.BooleanField(default=False)
    _4 = models.BooleanField(default=False)
    _5 = models.BooleanField(default=False)
    _6 = models.BooleanField(default=False)
    _7 = models.BooleanField(default=False)
    _8 = models.BooleanField(default=False)
    _9 = models.BooleanField(default=False)
    _10 = models.BooleanField(default=False)
    _11 = models.BooleanField(default=False)
    _12 = models.BooleanField(default=False)
    _13 = models.BooleanField(default=False)
    _14 = models.BooleanField(default=False)
    _15 = models.BooleanField(default=False)
    _16 = models.BooleanField(default=False)
    _17 = models.BooleanField(default=False)
    _18 = models.BooleanField(default=False)
    _19 = models.BooleanField(default=False)
    _20 = models.BooleanField(default=False)
    _21 = models.BooleanField(default=False)
    _22 = models.BooleanField(default=False)
    _23 = models.BooleanField(default=False)
    _24 = models.BooleanField(default=False)
    _25 = models.BooleanField(default=False)
    _26 = models.BooleanField(default=False)
    _27 = models.BooleanField(default=False)
    _28 = models.BooleanField(default=False)
    test_type = models.CharField(max_length=255)

    objects = TypeTestManager

    def __str__(self):
        return self.test_type




