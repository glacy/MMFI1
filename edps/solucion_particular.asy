import graph;
import math;
size(350,IgnoreAspect);
currentlight.background = white;
real xmin=-4,xmax=4;
real ymin=-4,ymax=4;

typedef real realfcn(real);

realfcn F(real c) {
  return new real(real x) {return c/x^2;};
}

bool3 branch(real x)
{
  return x != 0;
}

path g=graph(F(1),.001,xmax,operator ..);
path h=g--(0,0)--cycle;
fill(h,lightgray);
draw(h);

path f=graph(F(1),xmin,-.01,operator ..);
path p=(0,0)--f--cycle;
fill(p,lightgray);
draw(p);
for(int i=0; i < 20; i=i+2){
  draw(graph(F(i/10),xmin,xmax,branch)); 
}

for(int i=0; i < 25; i=i+2){
  draw(graph(F(-i/10),xmin,xmax,branch));
}

xaxis("$x$",xmax=xmax,xmin=xmin,RightTicks(NoZero));
yaxis("$y$",ymin=ymin,ymax=ymax,RightTicks(NoZero));
xequals(Label("$x=1$",(1,0),up),1,extend=false,gray+dashed);
limits((-1.5,-1.5),(1.5,1.5),Crop);  
arrow("$c=1$",(1,1),NNE+3E,blue);
label("$y=\displaystyle \frac{c}{x^2}$",(.5,-.5),W);
label("$y$",(0,1.5),N);
label("$x$",(1.5,0),E);
draw((1,0)--(1,1),red); 