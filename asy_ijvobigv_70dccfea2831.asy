draw(yscale(.2)*unitcircle);
dot((0,2));

draw((0,0)--(0,2),dotted);
label("$z$",(0,1),E);

real theta = 45*pi/180;
draw((cos(theta),.2*sin(theta))--((cos(theta),.2*sin(theta))+ .2*(-sin(theta),.2*cos(theta))),arrow=Arrow(6),blue+linewidth(2pt));
label("$\mathrm{d}\vec{l}$",(cos(theta),.2*sin(theta)),NE );

draw((0,0)--(cos(theta),.2*sin(theta)),dotted);
label("$R$",(cos(theta),.2*sin(theta))/2,SE);

draw((cos(theta),.2*sin(theta))--(0,2),dotted);
label("$r$",1/2*((cos(theta),.2*sin(theta))+(0,2)),NE);

draw((0,2)--((0,2) + .2*((0,2)-(cos(theta),.2*sin(theta)))),arrow = Arrow(6));
label("$\hat{r}$",(0.02,2.1),N);