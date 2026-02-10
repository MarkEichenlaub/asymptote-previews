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