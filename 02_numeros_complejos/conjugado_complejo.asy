defaultpen(fontsize(14pt));          // Tamaño global de fuente

size(0,220,IgnoreAspect);
import graph;
import math;
pen c1=rgb(0,39,87);
pen c2=rgb(255,64,0);
pair z0=(0,0);
pair z1=(2,3);
pair z2=(z1.x,-z1.y);
pair z3 = -z1;
pair z4 = -z2;
real r = sqrt(z1.x**2+z1.y**2);
real theta=atan(z1.y/z1.x);
real theta2=-theta;
int lim = 4;

draw(scale(r)*unitcircle,gray);
xaxis("$x$",xmax=lim,xmin=-lim,above=true);
yaxis("$y$",ymax=lim,ymin=-lim,above=true);

dot(z1,black);
dot(z2,black);
dot(z3,black);
dot(z4,black);
label("$z=(x,y)$",z1,NE);
label("$\bar{z}=(x,-y)$",z2,SE);
label("$-z=(-x,-y)$",z3,SW);
label("$-\bar{z}=(-x,y)$",z4,NW);
draw(z0--z1,c1);
draw(z0--z2,c1);
draw(z0--z3,c1);
draw(z0--z4,c1);

path c=arc(0,1,0,degrees(theta));
path d=arc(0,1,0,-degrees(theta));
draw("$\theta$",c,c1,Arrow);
draw("$-\theta$",d,SE,c1,Arrow);
ytick(" ",(1,0),c1);
ytick(" ",(.8,0),c1);
//for(int i=-lim; i < lim; ++i)
//  xtick(" ",i);
//for(int i=-lim; i < lim; ++i)
//ytick(" ",i);
draw(z1--z2,dashed+c2);
//draw(z1--z3,dashed+c2);
draw(z1--z4,dashed+c2);
draw(z2--z3,dashed+c2);
draw(z3--z4,dashed+c2);
//dot((-z1.y,z1.x),red);