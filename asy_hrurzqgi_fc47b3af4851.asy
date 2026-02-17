unitsize(5cm);

draw((0,0)--(2,0),linewidth(.5pt));
draw((0,0)--(.4,.9),linewidth(.5pt));

draw((.6,.2)--(.6,.4));
draw((1,.2)--(1,.4));
draw(shift(.8,.4)*yscale(.05)*xscale(.2)*unitcircle);
draw(shift(.8,.2)*yscale(.05)*xscale(.2)*arc((0,0),1,0,-180));
draw(shift(.8,.2)*yscale(.05)*xscale(.2)*arc((0,0),1,0,180),dotted);
draw((.95,.17)--(1.7,.5));
label("$L$",(1.4,.28));
dot((1.7,.5));
draw((1.7,.5)--(1.3,.6),arrow = Arrow(6));
label("$v_0$",(1.55,.6));

draw((.8,.2)--(.6,.2),dotted);
label("$R$",(.7,.18),N);