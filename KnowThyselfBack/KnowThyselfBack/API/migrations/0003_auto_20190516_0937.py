# Generated by Django 2.2.1 on 2019-05-16 09:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('API', '0002_quadra_quadramanager_typeresult'),
    ]

    operations = [
        migrations.CreateModel(
            name='TypeShort',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('shortDescription', models.TextField()),
            ],
        ),
        migrations.DeleteModel(
            name='QuadraManager',
        ),
    ]
