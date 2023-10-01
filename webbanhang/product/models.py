from django.db import models
from django.utils.text import slugify 
from ckeditor.fields import RichTextField
from django.utils import timezone
from django.contrib.auth.models import User

class SanPham(models.Model):
    TenSanPham = models.CharField(max_length=255, unique=True)
    GiaKhuyenMai = models.IntegerField(blank=False, null=False)
    GiaBan = models.IntegerField(blank=False, null=False)
    PhanTramGiam = models.IntegerField(blank=True, null=True)
    MoTaNgan = models.TextField(max_length=255)
    MoTaDai = RichTextField()
    ChuyenMuc = models.ForeignKey('ChuyenMuc', on_delete=models.CASCADE, blank=False, null=False)
    MauSac = models.ManyToManyField('MauSac', related_name='SanPham', blank=True)
    The = models.CharField(max_length=255)
    AnhChinh = models.ImageField(upload_to='uploads/', blank=True, null=True)
    AnhPhu1 = models.ImageField(upload_to='uploads/', blank=True, null=True)
    AnhPhu2 = models.ImageField(upload_to='uploads/', blank=True, null=True)
    AnhPhu3 = models.ImageField(upload_to='uploads/', blank=True, null=True)
    DuongDan = models.SlugField(blank=True, null=True)
    TrangThai = models.BooleanField(default=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    class Meta:
        verbose_name = "Sản Phẩm"
        verbose_name_plural = "Sản Phẩm"
        
    def save(self, *args, **kwargs):
        self.DuongDan = slugify(self.TenSanPham)
        self.PhanTramGiam = ((self.GiaKhuyenMai - self.GiaBan) / self.GiaKhuyenMai) * 100
        super(SanPham, self).save(*args, **kwargs)
    
    def __str__(self):
        return self.TenSanPham


class ChuyenMuc(models.Model):
    TenChuyenMuc = models.CharField(max_length=255)
    DuongDan = models.SlugField(blank=True, null=True)
    HinhAnh = models.ImageField(upload_to='uploads/', blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    class Meta:
        verbose_name = "Chuyên Mục"
        verbose_name_plural = "Chuyên Mục"
        
    def save(self, *args, **kwargs):
        self.DuongDan = slugify(self.TenChuyenMuc)
        super(ChuyenMuc, self).save(*args, **kwargs)
    
    def __str__(self):
        return self.TenChuyenMuc


class MauSac(models.Model):
    TenMauSac = models.CharField(max_length=255)
    MaMauSac = models.CharField(max_length=255)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    class Meta:
        verbose_name = "Màu Sắc"
        verbose_name_plural = "Màu Sắc"
        
    def __str__(self):
        return self.TenMauSac


RATING = (
    (1, "★☆☆☆☆"),
    (2, "★★☆☆☆"),
    (3, "★★★☆☆"),
    (4, "★★★★☆"),
    (5, "★★★★★"),
)

class Review(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)  
    sanpham = models.ForeignKey(SanPham, on_delete=models.CASCADE)  
    noi_dung = models.TextField()  
    diem_danh_gia = models.IntegerField(choices=RATING)  # Thêm trường rating
    ngay_danh_gia = models.DateTimeField(default=timezone.now)  

    class Meta:
        verbose_name = "Đánh giá"
        verbose_name_plural = "Đánh giá"

    def __str__(self):
        return f"Đánh giá của {self.user.username} cho sản phẩm {self.sanpham.TenSanPham}"

    
