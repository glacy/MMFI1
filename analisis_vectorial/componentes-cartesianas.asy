import graph3;
size(0,300);

currentprojection=orthographic(2,1,1,up=Z);

real a=1.35;
//vector A
triple A=(.75,1.15,1);
//ejes +etiquetas
xaxis3(Label("$x$",1),xmax=a,xmin=-a,Arrow3);
yaxis3(Label("$y$",1),ymax=a,ymin=-a,Arrow3);
zaxis3(Label("$z$",1),zmax=a,zmin=-a,Arrow3);
//vector A
draw("$\vec{A}$",(0,0,0)--A,rgb(00,28,56),Arrow3,PenMargin3);
//componentes 
draw(A--(A.x,A.y,0)--(A.x,0,0),gray+dashed,PenMargin3);
draw((A.x,A.y,0)--(0,A.y,0),gray+dashed,PenMargin3);
draw((A.x,A.y,0)--(0,0,0),gray+dashed,PenMargin3);
draw(A--(0,0,A.z),gray+dashed,PenMargin3);

// Puntos de los extremos de los ejes
dot((A.x,0,0), rgb(00,28,56));
dot((0,A.y,0), rgb(00,28,56));
dot((0,0,A.z), rgb(00,28,56));
label("$A_x$", (A.x,0,0), align=S);
label("$A_y$", (0,A.y,0), align=N);
label("$A_z$", (0,0,A.z), align=NW);