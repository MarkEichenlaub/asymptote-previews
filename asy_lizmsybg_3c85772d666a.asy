unitsize(0.5cm);

draw(shift(3,5)*unitcircle);
draw(shift(-4,5)*unitcircle);
draw((-4,5)--(-1.5,5), arrow = Arrow(6));
label("$v$",(-1.5,5),E);
label("original reference frame, before collision",(-.5,3.5),S);

draw(shift(3,0)*unitcircle);
draw(shift(-4,0)*unitcircle);
draw((-4,0)--(-1.5,0), arrow = Arrow(6));
label("$v$",(-1.5,0),E);
draw((-4,-.1)--(-5.25,-.1), arrow = Arrow(6),deepred);
label("$v/2$",(-5.25,-.1),W,deepred);
draw((3,-.1)--(1.75,-.1), arrow = Arrow(6), deepred);
label("$v/2$",(1.75,-.1),SW,deepred);
label("adding velocities",(-.5,-1.5),S);

draw(shift(3,-5)*unitcircle);
draw(shift(-4,-5)*unitcircle);
draw((3,-5)--(1.25,-5), arrow = Arrow(6));
label("$v/2$",(1.25,-5),W);
draw((-4,-5)--(-2.75,-5), arrow = Arrow(6));
label("$v/2$",(-2.75,-5),E);
label("new reference frame, before collision",(-.5,-6.5),S);

draw(shift(3,-10)*unitcircle);
draw(shift(-4,-10)*unitcircle);
draw((3,-10)--(4.25,-10), arrow = Arrow(6));
label("$v/2$",(4.25,-10),E);
draw((-4,-10)--(-5.25,-10), arrow = Arrow(6));
label("$v/2$",(-5.25,-10),W);
label("new reference frame, after collision",(-.5,-11.5),S);

draw(shift(3,-15)*unitcircle);
draw(shift(-4,-15)*unitcircle);
draw((3,-15)--(4.25,-15), arrow = Arrow(6));
label("$v/2$",(4.25,-15),E);
draw((-4,-15)--(-5.25,-15), arrow = Arrow(6));
label("$v/2$",(-5.25,-15),W);
label("adding velocities again",(-.5,-16.5),S);
draw((-4,-15.1)--(-2.75,-15.1), arrow = Arrow(6),deepred);
label("$v/2$",(-2.75,-15.1),E,deepred);
draw((3,-15.1)--(4.25,-15.1), arrow = Arrow(6), deepred);
label("$v/2$",(4.25,-15.1),SE,deepred);

draw(shift(3,-20)*unitcircle);
draw(shift(-4,-20)*unitcircle);
draw((3,-20)--(5.5,-20), arrow = Arrow(6));
label("$v$",(5.5,-20),E);
label("original reference frame, after collision",(-.5,-21.5),S);