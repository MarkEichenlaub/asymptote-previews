unitsize(2cm);

draw(shift(0,1)*scale(.1)*unitcircle);
draw((-.2,0)--(1.2,0));
label("Dropped Ball",(.6,0),S);
draw((0,0)--(0,.9), dotted);
label("$h$",(0,.45),E);

draw(shift(3,1)*scale(.1)*unitcircle);
draw((3,0)--(3,.9), dotted);
label("$h$",(3,.45),E);
label("Thrown Ball",(3.6,0),S);
draw((2.8,0)--(4.2,0));
draw((3.2,1)--(3.6,1.4), arrow = Arrow(6));
label("$v$",(3.4,1.2),NW);

draw((-.2,1)--(-.2,1.6), arrow = Arrow(6));
label("$v$",(-.2,1.3),W);


draw((-.4,0)--(-.4,.4), arrow = Arrow(6));
label("$v$",(-.4,.2),W);


draw((2.6,0)--(2.6,.4), arrow = Arrow(6));
label("$v$",(2.6,.2),W);