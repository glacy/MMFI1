import three;
import graph3;
//import math;
currentprojection=orthographic(5,4,2,center=true);

size(5cm);
size3(5cm,5cm,5cm);
//componentes de A
real ax=5;
real ay=0.5;
real az=0.5;
//componentes de B
real bx=0.5;
real by=4;
real bz=0.5;
//componentes de C
real cx=0.5;
real cy=0.5;
real cz=2;

//ejes +etiquetas 
xaxis3(Label("$x$",1),xmax=5.25,dashed,Arrow3);
yaxis3(Label("$y$",1),ymax=5.25,dashed,Arrow3);
zaxis3(Label("$z$",1),zmax=5.25,dashed,Arrow3);

//dibujar vectores A, B y C
draw("$\vec{A}$",(0,0,0)--(ax,ay,az),rgb(00,28,56),Arrow3,PenMargin3);
draw("$\vec{B}$",(0,0,0)--(bx,by,bz),rgb(212,164,24),Arrow3,PenMargin3);
draw("$\vec{C}$",(0,0,0)--(cx,cy,cz),rgb(159,180,105),Arrow3,PenMargin3);

//dibujar las caras del paralelepípedo
pen bg=gray(0.9)+opacity(0.5);
draw(surface((ax,ay,az)--(ax+bx,ay+by,az+bz)--(bx,by,bz)--(0,0,0)--cycle),bg);
draw(surface((ax,ay,az)--(ax+cx,ay+cy,az+cz)--(cx,cy,cz)--(0,0,0)--cycle),bg);
draw(surface((bx,by,bz)--(bx+cx,by+cy,bz+cz)--(cx,cy,cz)--(0,0,0)--cycle),bg);
draw(surface((ax+cx,ay+cy,az+cz)--(ax+bx+cx,ay+by+cy,az+bz+cz)--(ax+bx,ay+by,az+bz)--(ax,ay,az)--cycle),bg);
draw(surface((ax+cx,ay+cy,az+cz)--(ax+bx+cx,ay+by+cy,az+bz+cz)--(cx+bx,cy+by,cz+bz)--(cx,cy,cz)--cycle),bg);