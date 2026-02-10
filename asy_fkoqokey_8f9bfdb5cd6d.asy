unitsize(1cm);
//draw(scale(1.3)*unitcircle,dashed);
fill(shift(0,1.3)*unitcircle, yellow);
label("c.o.m.",(0,0),W);
fill(shift(0,-3)*scale(.3)*unitcircle,blue);
//draw((0,-3)--(5,-3),arrow=Arrow(6),red);
//label("$\vec{v}_{\mathrm{planet}}$",(3,-3),S);
//draw(scale(3)*unitcircle,dashed);
//draw((0,0)--(-6,0),arrow = Arrow(TeXHead), dashed+linewidth(.5));
//label("to Earth",(-5,0),S);
//draw((0,1.3)--(-1,1.3),arrow=Arrow(6),red);
//label("$v_{\mathrm{sun}}$",(-.5,1.3),N);

draw((0,0)--(0,-3),gray);
label("$x$",(0,-1.5),E);

draw((0,0)--(0,1.3),gray);
label("$d-x$",(0,.5),E);

draw((2,-3)--(2,1.3),gray);
label("$d$",(2,0),E);

dot((0,0));