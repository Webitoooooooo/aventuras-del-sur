from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from .models import Categoria, Experiencia, Inscripcion
from .forms import CategoriaForm, ExperienciaForm

@login_required
def lista_categorias(request):
    if request.session.get('rol') != 'ADMIN':
        return redirect('dashboard')
    categorias = Categoria.objects.all()
    return render(request, 'experiencias/categorias.html', {'categorias': categorias})

@login_required
def crear_categoria(request):
    if request.session.get('rol') != 'ADMIN':
        return redirect('dashboard')
    form = CategoriaForm(request.POST or None)
    if form.is_valid():
        form.save()
        return redirect('lista_categorias')
    return render(request, 'experiencias/form_generico.html', {'form': form, 'titulo': 'Nueva Categoría'})

@login_required
def editar_categoria(request, pk):
    if request.session.get('rol') != 'ADMIN':
        return redirect('dashboard')
    cat = get_object_or_404(Categoria, pk=pk)
    form = CategoriaForm(request.POST or None, instance=cat)
    if form.is_valid():
        form.save()
        return redirect('lista_categorias')
    return render(request, 'experiencias/form_generico.html', {'form': form, 'titulo': 'Editar Categoría'})

@login_required
def eliminar_categoria(request, pk):
    if request.session.get('rol') != 'ADMIN':
        return redirect('dashboard')
    cat = get_object_or_404(Categoria, pk=pk)
    cat.delete()
    return redirect('lista_categorias')

@login_required
def lista_experiencias(request):
    rol = request.session.get('rol')
    if rol == 'ADMIN':
        experiencias = Experiencia.objects.all()
    elif rol == 'GUIA':
        experiencias = Experiencia.objects.filter(creador=request.user)
    else:
        experiencias = Experiencia.objects.filter(categoria__activa=True)
    return render(request, 'experiencias/lista.html', {'experiencias': experiencias, 'rol': rol})

@login_required
def crear_experiencia(request):
    if request.session.get('rol') not in ['ADMIN', 'GUIA']:
        return redirect('dashboard')
    form = ExperienciaForm(request.POST or None)
    if form.is_valid():
        exp = form.save(commit=False)
        exp.creador = request.user
        exp.save()
        return redirect('lista_experiencias')
    return render(request, 'experiencias/form_generico.html', {'form': form, 'titulo': 'Nueva Experiencia'})

@login_required
def editar_experiencia(request, pk):
    rol = request.session.get('rol')
    if rol == 'ADMIN':
        exp = get_object_or_404(Experiencia, pk=pk)
    elif rol == 'GUIA':
        exp = get_object_or_404(Experiencia, pk=pk, creador=request.user)
    else:
        return redirect('dashboard')
    form = ExperienciaForm(request.POST or None, instance=exp)
    if form.is_valid():
        form.save()
        return redirect('lista_experiencias')
    return render(request, 'experiencias/form_generico.html', {'form': form, 'titulo': 'Editar Experiencia'})

@login_required
def eliminar_experiencia(request, pk):
    if request.session.get('rol') != 'ADMIN':
        return redirect('lista_experiencias')
    exp = get_object_or_404(Experiencia, pk=pk)
    exp.delete()
    return redirect('lista_experiencias')

@login_required
def inscribir_experiencia(request, pk):
    if request.session.get('rol') != 'TURISTA':
        return redirect('lista_experiencias')
    exp = get_object_or_404(Experiencia, pk=pk)
    Inscripcion.objects.get_or_create(turista=request.user, experiencia=exp)
    messages.success(request, f'Reserva registrada para {exp.titulo}')
    return redirect('mis_reservas')

@login_required
def mis_reservas(request):
    rol = request.session.get('rol')
    if rol == 'ADMIN':
        reservas = Inscripcion.objects.select_related('turista', 'experiencia').all()
    elif rol == 'GUIA':
        reservas = Inscripcion.objects.filter(experiencia__creador=request.user)
    else:
        reservas = Inscripcion.objects.filter(turista=request.user)
    return render(request, 'experiencias/reservas.html', {'reservas': reservas, 'rol': rol})