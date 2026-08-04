defaultpen(fontsize(14pt));          // Tamaño global de fuente

size(0,230,IgnoreAspect);
import graph;
import math;
import geometry;
pen c1=rgb(0,39,87);
pen c2=rgb(255,64,0);
pair z0=(0,0);
pair z1=(3,1.5);
pair z2=(-z1.y,z1.x);
pair z3 = (z1.y,-z1.x);

real r = sqrt(z1.x**2+z1.y**2);
real theta=atan(z1.y/z1.x);
int lim = 4;

draw(scale(r)*unitcircle,gray);
xaxis("$x$",xmax=lim,xmin=-lim,above=true);
yaxis("$y$",ymax=lim,ymin=-lim,above=true);

dot(z1,black);
dot(z2,black);
dot(z3,black);
label("$z=(x,y)=re^{i\theta}$",z1,NE);

label("$iz=(-y,x)=re^{i(\theta+\pi/2)}$",z2,NW);
label("$-iz=(-y,x)=re^{i(\theta-\pi/2)}$",z3,SE);
draw(z0--z1,c1);
draw(z0--z2,c1);
draw(z0--z3,c1);

path c=arc(0,1,0,degrees(theta));
path d=arc(0,1,degrees(theta),degrees(theta)+90);
path e=arc(0,1,degrees(theta),degrees(theta)-90);
draw("$\theta$",c,c1,Arrow);
perpendicular(z0,NE,z0--z1,c2);
draw(z2--z3,c1);