from django.db import models
from django.contrib.auth.models import User

class Categoria(models.Model):
    nombre = models.CharField(max_length=100)
    descripcion = models.TextField(blank=True)
    activa = models.BooleanField(default=True)

    def __str__(self):
        return self.nombre

class Experiencia(models.Model):
    titulo = models.CharField(max_length=150)
    descripcion = models.TextField()
    precio = models.DecimalField(max_digits=10, decimal_places=2)
    cupo_maximo = models.PositiveIntegerField()
    fecha_hora = models.DateTimeField()
    categoria = models.ForeignKey(Categoria, on_delete=models.PROTECT)
    creador = models.ForeignKey(User, on_delete=models.CASCADE)

    def __str__(self):
        return self.titulo

class Inscripcion(models.Model):
    ESTADOS = [
        ('PENDIENTE', 'Pendiente'),
        ('CONFIRMADO', 'Confirmado'),
    ]
    turista = models.ForeignKey(User, on_delete=models.CASCADE)
    experiencia = models.ForeignKey(Experiencia, on_delete=models.CASCADE)
    fecha_inscripcion = models.DateTimeField(auto_now_add=True)
    estado_pago = models.CharField(max_length=15, choices=ESTADOS, default='PENDIENTE')

    def __str__(self):
        return f"{self.turista.username} - {self.experiencia.titulo}"