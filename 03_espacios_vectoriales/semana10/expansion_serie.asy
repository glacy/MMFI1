import graph;
import fontsize;
defaultpen(fontsize(16pt));
size(300,IgnoreAspect);
currentlight.background=white;
real f(real x) {return exp(-x);}
real g(real x) {return 15/16-11/16*x+5/32*x^2-1/96*x^3;}
xaxis(Label("$x$",position=EndPoint, align=NE),LeftTicks,Arrow);
yaxis(Label("$y$",position=EndPoint, align=NE),RightTicks,Arrow);
label("$e^{-x}$",(-1,15),blue);
label("$\displaystyle \frac{15}{16}-\frac{11}{16}x+\frac{5}{32}x^2-\frac{1}{96}x^3$",(7,3),red);
draw(graph(f,-3,15),linewidth(1mm)+blue);
draw(graph(g,-3,15),linewidth(1mm)+red+dashed);