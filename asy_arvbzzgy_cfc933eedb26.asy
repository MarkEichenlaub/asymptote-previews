unitsize(4cm);

draw((0,0)--(1,0));
draw((0,.2)--(1,.2));

draw((.2,0)--(.2,.2),dotted);
draw((.3,0)--(.3,.2),dotted);
//label("$\mathrm{d}x$",(.25,0),S);

//draw((.23,0)--(.23,.2),dotted+red);
//draw((.35,0)--(.35,.2),dotted+red);
//label("$s(x)$",(.215,.2),N,red);
//label("$s(x + \mathrm{d}x)$",(.325,0),S,red);

//draw((.2,.22)--(.23,.22),arrow = Arrow(6),red);
//draw((.3,-.02)--(.35,-.02),arrow = Arrow(6),red);

draw((.7,0)--(.7,.2),dotted);
draw((.8,0)--(.8,.2),dotted);

label("$\delta x$",(.5,.2),N);
draw((.8,.1)--(1,.1),arrow = Arrow(6),blue);
draw((.2,.1)--(0,.1),arrow = Arrow(6),blue);
label("$T + \Delta T(x + \delta x)$",(1,.1),E,blue);
label("$T + \Delta T(x)$",(0,.1),W,blue);