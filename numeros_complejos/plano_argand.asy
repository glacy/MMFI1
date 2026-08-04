defaultpen(fontsize(14pt));          // Tamaño global de fuente

size(0,250,IgnoreAspect);
import graph;
import math;
pen c1=rgb(0,39,87);
pen c2=rgb(255,64,0);
pair z0=(0,0);
pair z1=(1.5,2.5);
pair z2=(4,2);
pair z3=(0,1);
pair z4=(3,0);
real theta=atan(3/2);
real theta2=-theta;
xaxis("Re",xmax=5.25,above=true);
yaxis("Im",ymax=3.5,above=true);
label("$(a_1,b_1)=a_1+ib_1$",z1,NE);
label("$i=(0,1)$",z3,W);
label("$(4,2)=4+2i$",z2,NE);
label("$(3,0)$",z4,S);
label("$a_1$",(z1.x,0),S,c2);
label("$b_1$",(0,z1.y),W,c2);
draw(z1--(z1.x,0),c2+dashed);
draw(z1--(0,z1.y),c2+dashed);
dot(z1,black);
dot(z2,black);
dot(z3,black);
dot(z4,black);
draw(z2--(z2.x,0),c1+dashed);
draw(z2--(0,z2.y),c1+dashed);
for(int i=1; i < 6; ++i)
xtick(" ",i);
for(int i=1; i < 4; ++i)
ytick(" ",i);