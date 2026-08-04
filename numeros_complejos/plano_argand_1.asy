defaultpen(fontsize(14pt));          // Tamaño global de fuente
size(0,250,IgnoreAspect);
import graph;
import math;
pen c1=rgb(0,39,87);
pen c2=rgb(255,64,0);
pair z0=(0,0);
pair z1=(1,sqrt(3));
real theta=atan(z1.y/z1.x);
xaxis("$x$",xmax=1.25,above=true);
yaxis("$y$",ymax=2.25,above=true);
label("$1+i\sqrt{3}$",z1,NE);
dot(z1,black);
draw(Label("$2$",c1),z0--z1,NW, c1);
path c=arc(0,.35,0,degrees(theta));
draw("$\pi/3$",c,c1,PenMargins);
draw((0,z1.y)--z1,c2+dashed);
draw((z1.x,0)--z1,c2+dashed);
label("$\sqrt{3}$",(0,z1.y),W,c2);
label("$1$",(z1.x,0),S,c2);
for(int i=0; i < 2; ++i)
xtick(" ",i/2.);
for(int i=0; i < 5; ++i)
ytick(" ",i/2.);