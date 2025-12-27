from django.shortcuts import render

def index(request):
    return render(request, 'virtual_assistants/index.html')

def about_us(request):
    return render(request, 'virtual_assistants/about_us.html')