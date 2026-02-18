unitsize(3cm);

draw(unitcircle,linewidth(2pt));
draw("$R$",(0,0)--(0,1),dotted);

real theta = 15;

draw(rotate(theta)*((-2,0)--(2,0)));

dot(rotate(theta)*(-2,0));

dot(rotate(theta)*(2,0));

draw((0,0)--(2,0),dotted);
draw("$\theta$",arc((0,0),.6,0,theta));

draw("$\hat{\theta}$",rotate(theta)*((2,0)--(2,.2)),arrow = Arrow(6),red);
draw("$\hat{r}$",rotate(theta)*((2,0)--(2.2,0)),arrow = Arrow(6),red);