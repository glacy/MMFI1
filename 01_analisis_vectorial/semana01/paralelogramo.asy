import three;
import graph3;
//import math;
currentprojection=orthographic(1,1,1,up=Z);

size(0,200);
real a=3.5;

//ejes +etiquetas
xaxis3(Label("$x$",1),xmax=a,xmin=0,Arrow3);
yaxis3(Label("$y$",1),ymax=a,ymin=0,Arrow3);
zaxis3(Label("$z$",1),zmax=a,zmin=0,Arrow3);

//componentes de A
real ax=2.5;
real ay=1;
real az=0;
//componentes de B
real bx=1;
real by=2;
real bz=0;
//componentes de C
real cx=0;
real cy=0;
real cz=0;


//dibujar vectores A, B y C
draw("$\vec{A}$",(0,0,0)--(ax,ay,az),rgb(00,28,56),Arrow3,PenMargin3);
draw("$\vec{B}$",(0,0,0)--(bx,by,bz),red,Arrow3,PenMargin3);

//dibujar las caras del paralelepípedo
pen bg=gray(0.9)+opacity(0.1);
draw(surface((ax,ay,az)--(ax+bx,ay+by,az+bz)--(bx,by,bz)--(0,0,0)--cycle),bg);
draw(surface((ax,ay,az)--(ax+cx,ay+cy,az+cz)--(cx,cy,cz)--(0,0,0)--cycle),bg);
draw(surface((bx,by,bz)--(bx+cx,by+cy,bz+cz)--(cx,cy,cz)--(0,0,0)--cycle),bg);
draw(surface((ax+cx,ay+cy,az+cz)--(ax+bx+cx,ay+by+cy,az+bz+cz)--(ax+bx,ay+by,az+bz)--(ax,ay,az)--cycle),bg);
draw(surface((ax+cx,ay+cy,az+cz)--(ax+bx+cx,ay+by+cy,az+bz+cz)--(cx+bx,cy+by,cz+bz)--(cx,cy,cz)--cycle),bg);