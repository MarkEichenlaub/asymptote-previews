unitsize(.8cm);

draw(shift(3,0)*unitcircle);
draw(shift(-4,0)*unitcircle);
draw((-4,0)--(-5.5,0), arrow = Arrow(6));
label("$v_{\rm same}$",(-5.5,0),W);
//draw((-4,-.1)--(-6.5,-.1), arrow = Arrow(6),deepred);
//label("$v$",(-6.5,-.1),W,deepred);
//draw((3,-.1)--(.5,-.1), arrow = Arrow(6), deepred);
//label("$v$",(.5,-.1),SW,deepred);
label("desired reference frame, after collision",(-.5,-1.5),S);
draw((3,0)--(4.5,0), arrow = Arrow(6));
label("$v_{\rm same}$",(4.5,0),E);

//draw(shift(3,-5)*unitcircle);
//draw(shift(-4,-5)*unitcircle);
//draw((3,-5)--(.5,-5), arrow = Arrow(6));
//label("$v$",(.5,-5),W);
//label("new reference frame",(-.5,-6.5),S);