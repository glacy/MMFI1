import three;
import math;
texpreamble("\usepackage{bm}");
size(300,0);
currentprojection=orthographic((3,-1.,1),up=Z);

pen thickp=linewidth(0.5mm);
real a=1.3;
real r0=1, dr=0.2, theta=45*pi/180, dtheta=20*pi/180, phi=45*pi/180, dphi=20*pi/180;

pen p=black;
pen v=gray;

draw(unitsphere,material(palegray+opacity(0.15),shininess=0.5));
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
// Vértices del elemento diferencial
triple P000 = sph(r0, theta, phi);
triple P100 = sph(r0+dr, theta, phi);
triple P010 = sph(r0, theta+dtheta, phi);
triple P110 = sph(r0+dr, theta+dtheta, phi);
triple P001 = sph(r0, theta, phi+dphi);
triple P101 = sph(r0+dr, theta, phi+dphi);
triple P011 = sph(r0, theta+dtheta, phi+dphi);
triple P111 = sph(r0+dr, theta+dtheta, phi+dphi);

// Líneas radiales

draw(O--P100, v);
draw(O--P110, v);
draw(O--P101, v);
draw(O--P111, v);

draw(Label("$r$",.5,N),O--P000,Arrow3);

//lineas guias proyecciones
draw(P000--(P000.x,P000.y,0), dashed+gray);
draw(O--(P000.x,P000.y,0), dashed+gray);


//elemento de volumen
draw(arc(O,P000,r0*dtheta*dir(theta*180/pi,(theta+dtheta)*180/pi)),align=6*dir(90,60/3)+Z);
draw(arc(O,P011,r0*dtheta*dir(theta*180/pi,(theta+dtheta)*180/pi)),align=Z);
draw(arc(O,P010,r0*dtheta*dir(theta*180/pi,phi*180/pi)),align=Z);
draw(arc(O,P110,r0*dtheta*dir(theta*180/pi,phi*180/pi)),align=Z);
draw(arc(O,P100,r0*dtheta*dir(theta*180/pi,(phi+dphi)*180/pi)),align=Z);
draw(arc(O,P101,r0*dtheta*dir((theta+dtheta)*180/pi,(phi+dphi)*180/pi)),align=Z);
draw(arc(O,P011,r0*dtheta*dir((theta+dtheta)*180/pi,phi*180/pi)),align=Z);
draw(arc(O,P111,r0*dtheta*dir((theta+dtheta)*180/pi,phi*180/pi)),align=Z);

draw("$\phi$",arc(O,0.25*X,0.25*dir(90,theta*180/pi)),align=6*dir(90,60/3)+Z,Arrow3);
draw("$\theta$",arc(O,0.25*Z,0.25*dir(phi*180/pi,theta*180/pi)),align=Z,Arrow3);