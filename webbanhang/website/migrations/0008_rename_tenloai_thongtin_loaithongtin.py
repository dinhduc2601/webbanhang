# Generated by Django 4.0.5 on 2023-06-15 14:47

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('website', '0007_loaithongtin_thongtin'),
    ]

    operations = [
        migrations.RenameField(
            model_name='thongtin',
            old_name='TenLoai',
            new_name='LoaiThongTin',
        ),
    ]
