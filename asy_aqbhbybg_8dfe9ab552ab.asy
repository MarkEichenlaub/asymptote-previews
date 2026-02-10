draw(unitcircle, dotted);
dot((1,0));
draw((1,0)--(1,.3), arrow = Arrow(6));
label("$v$",(1,.15),E);

draw(arc((0,0),1,0,10), blue);
dot((Cos(10),Sin(10)),blue);
draw(shift(Cos(10),Sin(10))*rotate(10)*((0,0)--(0,.3)),arrow = Arrow(6),blue);
label("$v$",shift(Cos(10),Sin(10))*rotate(10)*((0,0)--(0,.15)),E,blue);
//label("$\frac12 \pi R$",.5*(sqrt(2),sqrt(2)),NE, blue);