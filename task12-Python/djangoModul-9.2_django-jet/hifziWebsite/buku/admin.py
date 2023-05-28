from django.contrib import admin

# Register your models here.

from . models import Post, Kategori


class TampilPost(admin.ModelAdmin):
    list_display = ('judul', 'kategori')

admin.site.register(Post, TampilPost)
admin.site.register(Kategori)
