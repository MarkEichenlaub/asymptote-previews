//TeXeR source: https://artofproblemsolving.com/texer/xwbjxbmu

size(6cm);

dot((-1,0));
dot((1,0));
label("$m$",(-1,0),S);
label("$m$",(1,0),S);
draw((-1.5,0)--(1.5,0),dashed);
draw((-1,0)--(-.3,1),arrow = Arrow(6));
label("$v$",(-.5,.8),W);
draw((1,0)--(.3,1),arrow = Arrow(6));
label("$v$",(.5,.8),E);
label("$\theta$",(-.9,0),NE);
label("$\theta$",(.9,0),NW);

draw((1.8,0)--(2,.5)--(2.2,0));
draw((2,.5)--(2,.75));
draw((1.7,.75)--(2.3,.75));
draw((2,.75)--(2,.8));
draw(shift(2,.9)*scale(.1)*unitcircle);
draw((2,1.1)--(2,1.7), arrow = Arrow(6));
label("$v\sin\theta$",(2,1.4),E);