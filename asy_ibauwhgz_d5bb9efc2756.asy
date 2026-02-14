draw(shift(0,1)*scale(.1)*unitcircle);
draw((-.2,0)--(1.2,0));
label("Dropped Ball",(.6,0),S);
draw((0,0)--(0,.9), dotted+deepred);
label("$h$",(0,.45),E,deepred);

draw(shift(2,1)*scale(.1)*unitcircle);
draw((2,0)--(2,.9), dotted+deepred);
label("$h$",(2,.45),E,deepred);
label("Thrown Ball",(2.6,0),S);
draw((1.8,0)--(3.2,0));
draw((2.2,1)--(2.6,1), arrow = Arrow(6));
label("$v$",(2.4,1),N);