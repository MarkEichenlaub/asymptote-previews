draw(unitcircle);

draw((0,-1)--(0,1));
dot((0,0));
draw(shift(0,.2)*yscale(.4)*scale(.05)*unitcircle);

draw((0,-1.07)--(0,-1.6),arrow = Arrow(6));
label("to Earth",(0,-1.4),E);

label("rod",(0,-.6),E);
label("ring",(0,.2),E);