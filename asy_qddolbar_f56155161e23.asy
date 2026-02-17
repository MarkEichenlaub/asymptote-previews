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
//draw((2.2,1)--(2.6,1), arrow = Arrow(6));
//label("$v$",(2.4,1),N);

draw((-.2,1)--(-.6,1), arrow = Arrow(6));
label("$v$",(-.4,1),N);


draw((-.4,0)--(-.8,0), arrow = Arrow(6));
label("$v$",(-.4,0),S);


draw((2.6,0)--(2.2,0), arrow = Arrow(6));
label("$v$",(2.4,0),S);