unitsize(2cm);

draw((0,0)--(4,0)--(4,-2), linewidth(2pt));

fill(shift(0,.03)*((2,0)--(6,0)--(6,.5)--(2,.5)--cycle), lightgray);
draw(shift(0,.03)*((2,1)--(2,0)--(6,0)--(6,1)));

filldraw(shift(2.5,.5)*scale(.3)*unitcircle, white);

draw((2,.8)--(2.5,.8), dotted);
label("$x$",(2.25,.8),N);

label("table",(.5,-1),E);
label("trough",(6,1),NE);
label("water",(5,.25));
label("boat",(2.5,.5));