# Generated by Django 4.0.5 on 2023-07-02 05:05

import ckeditor.fields
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('product', '0007_alter_chuyenmuc_options_alter_mausac_options_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='sanpham',
            name='MoTaDai',
            field=ckeditor.fields.RichTextField(),
        ),
    ]
