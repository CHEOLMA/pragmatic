# Generated by Django 3.1.3 on 2021-02-19 10:47

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('articleapp', '0004_auto_20210127_1912'),
    ]

    operations = [
        migrations.AddField(
            model_name='article',
            name='like',
            field=models.IntegerField(default=0),
        ),
    ]
