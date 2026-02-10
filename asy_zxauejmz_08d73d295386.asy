size(8cm);

draw(unitcircle, dotted);
dot((-1,0));
draw((-1,0)--(-1,-.5), arrow = Arrow(6));
label("$v$",(-1,-.25),W);

dot((1,0),blue);
draw((1,0)--(1,.5), arrow = Arrow(6),blue);
label("$v$",(1,.25),E,blue);

draw((0,0)--(0,1), dashed);
label("$R$",(0,.5),E);
dot((0,0));

real dx = 4;
pair s = (dx,0);

draw(shift(s)*scale(2)*unitcircle, dotted);
dot(shift(s)*(-2,0));
draw(shift(s)*((-2,0)--(-2,-.5)), arrow = Arrow(6));
label("$v$",shift(s)*(-2,-.25),W);

dot(shift(s)*(2,0),blue);
draw(shift(s)*((2,0)--(2,.5)), arrow = Arrow(6),blue);
label("$v$",shift(s)*(2,.25),E,blue);

draw(shift(s)*((0,0)--(0,2)), dashed);
label("$2R$",shift(s)*(0,1),E);
dot(shift(s)*(0,0));