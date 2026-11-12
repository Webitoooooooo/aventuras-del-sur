from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.models import User
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from .models import Perfil

def login_view(request):
    if request.method == 'POST':
        usuario = request.POST.get('username')
        clave = request.POST.get('password')
        user = authenticate(request, username=usuario, password=clave)
        if user is not None:
            login(request, user)
            rol_defecto = 'ADMIN' if user.is_superuser else 'TURISTA'
            perfil, _ = Perfil.objects.get_or_create(user=user, defaults={'rol': rol_defecto})
            request.session['rol'] = perfil.rol
            return redirect('dashboard')
        messages.error(request, 'Usuario o contraseña incorrectos')
    return render(request, 'cuentas/login.html')

def registro_view(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        email = request.POST.get('email')
        password = request.POST.get('password')
        if User.objects.filter(username=username).exists():
            messages.error(request, 'El usuario ya existe')
        else:
            user = User.objects.create_user(username=username, email=email, password=password)
            Perfil.objects.create(user=user, rol='TURISTA')
            messages.success(request, 'Cuenta creada. Inicia sesión.')
            return redirect('login')
    return render(request, 'cuentas/registro.html')

def logout_view(request):
    request.session.flush()
    logout(request)
    return redirect('home')

@login_required
def lista_usuarios(request):
    if request.session.get('rol') != 'ADMIN':
        return redirect('dashboard')
    if request.method == 'POST':
        perfil_id = request.POST.get('perfil_id')
        nuevo_rol = request.POST.get('rol')
        perfil = get_object_or_404(Perfil, pk=perfil_id)
        perfil.rol = nuevo_rol
        perfil.save()
        messages.success(request, f'Rol actualizado para {perfil.user.username}')
        return redirect('lista_usuarios')
    perfiles = Perfil.objects.select_related('user').all()
    return render(request, 'cuentas/usuarios.html', {'perfiles': perfiles})