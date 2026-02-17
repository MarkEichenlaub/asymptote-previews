draw((0,0)--(1,0));
draw((0,.2)--(1,.2));

draw((.2,0)--(.2,.2),dotted);
draw((.3,0)--(.3,.2),dotted);
//label("$\mathrm{d}x$",(.25,0),S);

draw((.23,0)--(.23,.2),dotted+red);
draw((.35,0)--(.35,.2),dotted+red);
label("$s(x)$",(.215,.2),N,red);
label("$s(x + \mathrm{d}x)$",(.325,0),S,red);

draw((.2,.22)--(.23,.22),arrow = Arrow(6),red);
draw((.3,-.02)--(.35,-.02),arrow = Arrow(6),red);