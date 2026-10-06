import graph;
size(300,IgnoreAspect);

real f(real x) {return exp(-x);}
real g(real x) {return 15/16-11/16*x+5/32*x^2-1/96*x^3;}
xaxis(Label("$x$",position=EndPoint, align=NE),LeftTicks,Arrow);
yaxis(Label("$y$",position=EndPoint, align=NE),RightTicks,Arrow);
label("$e^{-x}$",(-1,15),fontsize(16pt)+blue);
label("$\frac{15}{16}-\frac{11}{16}x+\frac{5}{32}x^2-\frac{1}{96}x^3$",(7,2),fontsize(16pt)+red);
draw(graph(f,-3,15),blue);
draw(graph(g,-3,15),red);