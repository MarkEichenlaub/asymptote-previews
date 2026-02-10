unitsize(3cm);

draw(unitcircle, dotted);

dot((0,0));

draw((0,0)--(1,0));
dot((1,0));

draw((1,0)--(1,.3), arrow = Arrow(6));

label("you",(0,0),N);
label("ball",(1,0),E);
label("string",(.5,0),N);