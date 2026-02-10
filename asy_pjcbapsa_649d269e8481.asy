draw(unitcircle, dotted);
draw(arc((-0,0),1,180,360), arrow = MidArrow, red);

dot((1,0));
draw((1,0)--(1,.3), arrow = Arrow(6),blue);
label("$v$",(1,.15),E,blue);

dot((-1,0));
draw((-1,0)--(-1,-.3),arrow = Arrow(6));
label("$v$",(-1,-.15),W);
label("$\pi R$",(0,-1),S, red);