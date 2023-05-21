from django.shortcuts import render

# Create your views here.

from . models import Post

def index(request):
    # QUERYSET
    postingan = Post.objects.all()

    context = {
        'TampungPostingan':postingan
    }

    return render(request, 'buku/index.html', context)
