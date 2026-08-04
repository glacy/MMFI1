import graph;
import math;
size(0,4inches,IgnoreAspect);

pen c1=rgb(0,39,87);
pen c2=rgb(255,64,0);

real f(real x) {return .25 x^2;}
pair V(pair z) {return (z.x*z.y,-z.y^2);}

path g = graph(f,0,3);
draw(g,c2);

path vector(real x) {
return shift(x,f(x))*((0,0)--V((x,f(x))));
};

xaxis(Label("$x$",position=EndPoint, align=2E),LeftTicks,Arrow);
yaxis(Label("$y$",position=EndPoint, align=2N),RightTicks,Arrow);
label("$y=\frac{1}{4} x^2$",(2.5,f(2.5)), align=E, fontsize(12pt)+c2);
label("$\vec{\mathbf{F}}=xy\mathbf{\hat{\iota}}-y^2\mathbf{\hat{\jmath}}$",(3.5,.6),  fontsize(12pt)+c1);
real step = 0.25; 
for (real i = 0; i <= 2; i += step) {
dot((i,f(i)),c1);
draw(vector(i),c1,Arrow);
}