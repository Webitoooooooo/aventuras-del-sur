from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from experiencias.models import Experiencia, Inscripcion

def home(request):
    experiencias = Experiencia.objects.filter(categoria__activa=True)
    return render(request, 'core/home.html', {'experiencias': experiencias})

@login_required
def dashboard(request):
    rol = request.session.get('rol', 'TURISTA')
    contexto = {'rol': rol}
    if rol == 'ADMIN':
        contexto['total_exp'] = Experiencia.objects.count()
        contexto['total_res'] = Inscripcion.objects.count()
    elif rol == 'GUIA':
        contexto['mis_exp'] = Experiencia.objects.filter(creador=request.user).count()
    else:
        contexto['mis_res'] = Inscripcion.objects.filter(turista=request.user).count()
    return render(request, 'core/dashboard.html', contexto)