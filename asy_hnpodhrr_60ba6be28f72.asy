unitsize(3cm);

draw(unitcircle);
real theta = 60;

pair P = (Cos(theta), Sin(theta));

draw( (0,0)--P, dotted);

draw(P--1.7*P,arrow = Arrow(6));
draw(shift(P)*((0,0)--(.7*P.x,0)),dashed);

label("$s$", 1.35*P, NW);

draw(arc(P,.3,0,theta));
label("$\theta$", P + dir(theta/2)*.3,E);
label("$s_x$", P + (.35*P.x,0),S);

draw((-1.1,0)--(1.1,0), dashed);
draw(arc((0,0),.4,0,theta));
label("$\theta$",dir(theta/2)*.4,E);