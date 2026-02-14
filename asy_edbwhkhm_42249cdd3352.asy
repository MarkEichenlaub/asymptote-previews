draw(unitcircle);

draw((0,0)--.5*(sqrt(2),sqrt(2)), dotted);
label("$r$",.25*sqrt(2)*(1,1),SE);

draw((-1,-3)--(5,-3));
draw((-1,-3.4)--(5,-3.4));

draw((0,0)--(0,-3.2),dashed);
draw((0,0)--(5,-3.2),dashed);
draw("$\alpha$", arc((0,0),.4,-90,-40));

draw(shift(0,-3.2)*scale(.14)*unitcircle,linewidth(1.5pt));
label("$A$",(0,-3),NW);

label("$R_0$",(0,-1.8),E);

label("$O$",(0,0),W);

label("$\odot B_0$",(-.1,.7));

label("$M$",(5,-3.1),N);
//dot((5,-3.2));