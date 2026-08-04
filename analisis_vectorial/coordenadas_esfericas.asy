import three;
import math;
texpreamble("\usepackage{bm}");
size(300,0);
currentprojection=orthographic((2,.5,1),up=Z);

pen thickp=linewidth(0.5mm);
real a=.75;
real r0=1, dr=0.2, theta=45*pi/180, phi=45*pi/180;

pen p=black;
pen v=gray;

// Ejes
draw(Label("$x$",1),O--a*X,p,Arrow3);
draw(Label("$y$",1),O--a*Y,p,Arrow3);
draw(Label("$z$",1),O--a*Z,p,Arrow3);
label("$\rm O$",(0,0,0),-a*Y-X);

// Conversión esféricas -> cartesianas
triple sph(real rr, real th, real ph) {
  return (rr*sin(th)*cos(ph), rr*sin(th)*sin(ph), rr*cos(th));
}

triple O = (0,0,0);
// Vector de posición
triple P000 = sph(r0, theta, phi);

// Líneas radiales
draw(Label("$r$",.5,N),O--P000, red,Arrow3);



//lineas guias proyecciones
draw(P000--(P000.x,P000.y,0), dashed+gray);
draw(O--(P000.x,P000.y,0), dashed+gray);
draw((P000.x,P000.y,0)--(0,P000.y,0), dashed+gray);
draw((P000.x,P000.y,0)--(P000.x,0,0), dashed+gray);
draw(P000--(0,0,P000.z), dashed+gray);

// Etiquetas
label("$r\sin\theta$", midpoint(O--(P000.x,P000.y,0)), NE);
label("$r\sin\theta\sin\phi$", midpoint((P000.x,0,0)--(P000.x,P000.y,0)), S);
label("$r\sin\theta\cos\phi$", midpoint((0,P000.y,0)--(P000.x,P000.y,0)), E);
draw("$\phi$",arc(O,0.25*X,0.25*dir(90,theta*180/pi)),align=6*dir(90,60/3)+Z,Arrow3);
draw("$\theta$",arc(O,0.25*Z,0.25*dir(phi*180/pi,theta*180/pi)),align=Z,Arrow3);