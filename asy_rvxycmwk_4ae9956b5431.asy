draw(unitcircle, dotted);
draw(arc((0,0),1,0,90), arrow = MidArrow, red);
dot((1,0));
draw((1,0)--(1,.3), arrow = Arrow(6));
label("$v$",(1,.15),E);

dot((0,1),blue);
draw((0,1)--(-.3,1),arrow = Arrow(6),blue);
label("$v$",(-.15,1),N,blue);
label("$\frac12 \pi R$",.5*(sqrt(2),sqrt(2)),NE, red);