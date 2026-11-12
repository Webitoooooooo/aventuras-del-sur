from django import forms
from .models import Categoria, Experiencia

class CategoriaForm(forms.ModelForm):
    class Meta:
        model = Categoria
        fields = ['nombre', 'descripcion', 'activa']
        widgets = {
            'nombre': forms.TextInput(attrs={'class': 'form-control'}),
            'descripcion': forms.Textarea(attrs={'class': 'form-control', 'rows': 3}),
            'activa': forms.CheckboxInput(attrs={'class': 'form-check-input'}),
        }

class ExperienciaForm(forms.ModelForm):
    class Meta:
        model = Experiencia
        fields = ['titulo', 'descripcion', 'precio', 'cupo_maximo', 'fecha_hora', 'categoria']
        widgets = {
            'titulo': forms.TextInput(attrs={'class': 'form-control'}),
            'descripcion': forms.Textarea(attrs={'class': 'form-control', 'rows': 3}),
            'precio': forms.NumberInput(attrs={'class': 'form-control'}),
            'cupo_maximo': forms.NumberInput(attrs={'class': 'form-control'}),
            'fecha_hora': forms.DateTimeInput(attrs={'class': 'form-control', 'type': 'datetime-local'}),
            'categoria': forms.Select(attrs={'class': 'form-select'}),
        }