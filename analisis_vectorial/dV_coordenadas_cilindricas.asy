import three;
import math;
texpreamble("\usepackage{bm}");

size(300,0);

pen thickp=linewidth(0.5mm);
real rho=1, drho=rho+.25, phi=45, dphi=15, z=0.8 , dz=.2;

currentprojection=orthographic((4,1,2));

draw(unitcylinder,material(palegray+opacity(0.25),shininess=0.5));

real r=1.1;
pen p=black;
pen v=gray;
draw(Label("$x$",1),O--r*X,p,Arrow3);
draw(Label("$y$",1),O--r*Y,p,Arrow3);
draw(Label("$z$",1),O--r*Z,p,Arrow3);
label("$\rm O$",(0,0,0),-1.5Y-X);

triple O=(0,0,0);
triple Q=(rho*Cos(phi),rho*Sin(phi),z);
//triple R=(rho*Cos(phi+dphi),rho*Sin(phi+dphi),z);

triple Q1=(drho*Cos(phi),drho*Sin(phi),z);
triple Q2=(rho*Cos(phi+dphi),rho*Sin(phi+dphi),z);
triple Q3=(drho*Cos(phi+dphi),drho*Sin(phi+dphi),z);
triple Q4=(rho*Cos(phi),rho*Sin(phi),z+dz);
triple Q5=(rho*Cos(phi+dphi),rho*Sin(phi+dphi),z+dz);
triple Q6=(drho*Cos(phi+dphi),drho*Sin(phi+dphi),z+dz);
triple Q8=(drho*Cos(phi),drho*Sin(phi),z+dz);


draw(Q--(Q.x,Q.y,0),dashed+v);
draw(O--rho*dir(90,phi),dashed+v);
draw(O--rho*dir(90,phi+dphi),dashed+v);
draw((0,0,Q.z)--Q,dashed+v);
draw((0,0,Q.z)--Q3,dashed+v);
draw("$\phi$",arc(O,0.15*X,0.15*dir(90,phi)),align=6*dir(90,phi/3)+Z,Arrow3);
draw("$d\phi$",arc(O,.5*rho,90.,phi,90.,phi+dphi,Z),align=6*dir(90,phi)+Z,v);
draw(O--(Q.x,Q.y,0),dashed+v);
//draw("$\bm{r}$",O--Q,align=2*dir(90,phi),Arrow3,DotMargin3);
label("$\rho$",(0,0,0),align=22*dir(90,phi-.5*dphi)+Z);
draw("$\rho d\phi$",arc(O,rho,90.,phi,90.,phi+dphi,Z));
draw(arc((0,0,z),rho,90.,phi,90.,phi+dphi,Z),dashed+v);
draw(arc((0,0,z),drho,90.,phi,90.,phi+dphi,Z),v);
//draw(arc((0,0,z+dz),rho,90.,phi,90.,phi+dphi,Z),dashed+red);
draw(arc((0,0,z+dz),drho,90.,phi,90.,phi+dphi,Z),v);
//draw("$\theta$",arc(Q,0.15*Z,P),align=2*dir(phi/2,phi));
draw(Q1--Q8--Q4--arc((0,0,z+dz),rho,90.,phi,90.,phi+dphi,Z)--Q6--Q5,v);

draw(Q3--Q2--Q5,v+dashed);
draw(Q6--Q3,v);
draw("$dz$", Q4--Q,thickp);
draw("$d\rho$", Q1--Q,thickp);