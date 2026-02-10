unitsize(4cm);

draw(unitcircle,linewidth(2pt));

draw((0,0)--(1,0),dotted);

real theta = 55;

pair loc = dir(theta);

dot(loc, red+6);

draw(arc((0,0),.3,0,theta));
draw((0,0)--loc,dotted);
label("$\theta$",dir(theta/2)*.35);

draw((0,0)--loc, arrow = Arrow(6) , blue);
label("$\vec{r}$",loc/2,NW,blue);

real speed = 0.7;

pair v = scale(speed)*rotate(-90)*loc;

draw(shift(loc)*((0,0)--v), arrow = Arrow(6),red);
label( "$\vec{v}_R$" , loc + v/2 , NE, red);

draw(shift(loc)*((0,0)--(speed,0)), arrow = Arrow(6),red);
label("$\vec{v}_T$",loc + (speed/2,0), N,red);