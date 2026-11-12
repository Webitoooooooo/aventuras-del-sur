from django.contrib import admin
from django.urls import path
from core import views as core_views
from cuentas import views as cuentas_views
from experiencias import views as exp_views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', core_views.home, name='home'),
    path('dashboard/', core_views.dashboard, name='dashboard'),

    path('login/', cuentas_views.login_view, name='login'),
    path('registro/', cuentas_views.registro_view, name='registro'),
    path('logout/', cuentas_views.logout_view, name='logout'),
    path('usuarios/', cuentas_views.lista_usuarios, name='lista_usuarios'),

    path('categorias/', exp_views.lista_categorias, name='lista_categorias'),
    path('categorias/nueva/', exp_views.crear_categoria, name='crear_categoria'),
    path('categorias/editar/<int:pk>/', exp_views.editar_categoria, name='editar_categoria'),
    path('categorias/eliminar/<int:pk>/', exp_views.eliminar_categoria, name='eliminar_categoria'),

    path('experiencias/', exp_views.lista_experiencias, name='lista_experiencias'),
    path('experiencias/nueva/', exp_views.crear_experiencia, name='crear_experiencia'),
    path('experiencias/editar/<int:pk>/', exp_views.editar_experiencia, name='editar_experiencia'),
    path('experiencias/eliminar/<int:pk>/', exp_views.eliminar_experiencia, name='eliminar_experiencia'),

    path('reservar/<int:pk>/', exp_views.inscribir_experiencia, name='inscribir_experiencia'),
    path('reservas/', exp_views.mis_reservas, name='mis_reservas'),
]