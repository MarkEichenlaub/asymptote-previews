draw((0,0)--(0,1), arrow = Arrow(6));
draw((0,0)--(1,0), arrow = Arrow(6));
label("$S$",(0,1),W);

draw(shift(.2,.1)*((0,0)--(0,1)), arrow = Arrow(6), blue);
draw(shift(.2,.1)*((0,0)--(1,0)), arrow = Arrow(6), blue);
label("$S'$",(.2,1.1),W,blue);

draw(shift(.25,.5)*((0,0)--(.4,.2)), arrow = Arrow(6),blue);
draw((.25,.5)--(.65,.5), dotted+blue);
draw((.65,.5)--(.65,.7), dotted+blue);
label("$v_{x0}$",(.45,.5),S,blue);
label("$v_{y0}$",(.65,.6),E,blue);