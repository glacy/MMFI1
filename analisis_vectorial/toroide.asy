import three;
import graph3;

// Parámetros del toroide
real R = 3;
real r = 0.7;

// Definición paramétrica
triple f(pair uv) {
  real theta = uv.x;
  real phi = uv.y;
  return ((R + r*cos(phi))*cos(theta),
          (R + r*cos(phi))*sin(theta),
          r*sin(phi));
}

// Rango de parámetros
int N = 50;
surface toroide = surface(f,(0,0),(2pi,2pi),N,N,Spline);

// Configuración de la escena
size(300);
currentprojection = perspective(4,3,2);
currentlight = light(gray(0.8),specular=white, (3,3,2));

// Dibujar el toroide
draw(surface(toroide),surfacepen=orange+opacity(0.8));