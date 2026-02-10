unitsize(0.5cm);

draw(shift(3,0)*unitcircle);
draw(shift(-4,0)*unitcircle);
draw((-4,0)--(-1.5,0), arrow = Arrow(6));
label("$v$",(-1.5,0),E);
draw((-4,-.1)--(-5.25,-.1), arrow = Arrow(6),deepred);
label("$v/2$",(-5.25,-.1),W,deepred);
draw((3,-.1)--(1.25,-.1), arrow = Arrow(6), deepred);
label("$v/2$",(1.25,-.1),SW,deepred);
label("adding velocities",(-.5,-1.5),S);

draw(shift(3,-5)*unitcircle);
draw(shift(-4,-5)*unitcircle);
draw((3,-5)--(1.25,-5), arrow = Arrow(6));
label("$v/2$",(1.25,-5),W);
draw((-4,-5)--(-2.75,-5), arrow = Arrow(6));
label("$v/2$",(-2.75,-5),E);
label("new reference frame, before collision",(-.5,-6.5),S);