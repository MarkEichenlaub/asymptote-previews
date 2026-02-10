draw((0,.5)--(0,.54),linewidth(2pt));
dot((2,0));
draw((0,0)--(2,0),dashed);
label("$r$",(1,0),S);
draw((0,0)--(0,.5),dotted);
label("$y$",(0,.25),E);

draw((0,.5)--(2,0),dashed);
//label("$s$",(1,.25),NNE);

draw((2,0)--(1,.25),arrow = Arrow(6),red);
draw((2,0)--(1,0),red);
draw((1,0)--(1,0.25),red);
label("$\mathrm{d}F$",(1.5,.125),NNE);
label("$\mathrm{d}F_x$",(1.5,0),S);
label("$\mathrm{d}F_y$",(1,.125),W);