import math;
import graph3;
import three;
import solids;
size(0,200);

currentprojection=orthographic(-1,.5,2,up=Y);
currentlight=light((-1,1,1),(1,1,1));
currentlight.background=white;

pen p=linewidth(0.3mm);
pen c2=rgb(255,64,0);
real r=.1;
real h=3;

// Dibujo del cilindro usando unitcylinder
triple shiftC = (0,0,-h/2); // para centrar en z=0
draw(surface(shift(2*shiftC)*scale(r,r,2*h)*unitcylinder),
     gray+opacity(.15),render(compression=Low));
draw(surface(shift(shiftC)*scale(r,r,h)*unitcylinder),
     c2+opacity(.5),render(compression=High));

draw(shift(0,0,h/2)*scale(r,r,h)*unitdisk,c2,render(compression=High));
draw(shift(0,0,-h/2)*scale(r,r,h)*unitdisk,c2+opacity(.5),render(compression=High));

//Dibujar ejes cartesianos
real aS=1.25;
draw(Label("$\Large x$",EndPoint),-aS*X--aS*X,p+gray,Arrow3);
draw(Label("$\Large y$",EndPoint),-aS*Y--aS*Y,p+gray,Arrow3);
draw(Label("$\Large z$",EndPoint),-aS*.95*h*Z--aS*.95*h*Z,p+gray,Arrow3);

// Arco para indicar la trayectoria de integracion
path3 g=arc(O,1,90,360,90,0);
draw(g,gray,currentlight);

// Definición de la circunferencia en el plano z=0
triple f(real t) {return(cos(t),sin(t),0);}
triple fp(real t) {return(-sin(t),cos(t),0);} // vector tangente

// Dibujar vectores B tangentes en varios puntos
int N = 8; // cantidad de vectores
real L = 0.5; // longitud del vector
for(int i=0; i<N; ++i) {
  real t = 2pi*i/N;
  triple P = f(t);
  triple V = L*fp(t);
  draw(Label("$\Large \vec{B}$"),P -- P+V, red, Arrow3);
}

// Dibujar vectores dl tangentes en varios puntos
int N = 8; // cantidad de vectores
real M = 0.25; // longitud del vector
for(int i=0; i<N; ++i) {
  real t = 2pi*i/N;
  triple P = f(t);
  triple V = M*fp(t);
  draw(Label("$\Large d\vec{l}$",MidPoint),P -- P+V, blue+linewidth(3pt), Arrow3);
}