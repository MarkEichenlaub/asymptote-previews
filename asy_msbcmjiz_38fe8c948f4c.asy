//TeXeR source: https://artofproblemsolving.com/texer/msbcmjiz

draw((-3,0)--(3,0));

draw(((-2,0)--(2,0)--(2,1)--(-2,1)--cycle));
draw((2,.4)--(3,.4),arrow = Arrow(6));
label("$T$",(2.5,.4),S);
draw((0,.75)--(1,.75),arrow = Arrow(6));
label("$F_b$",(.5,.75),S);
draw((-2,.25)--(-3,.25),arrow = Arrow(6));
label("$F_t$",(-2.5,.25),N);

draw(((-1,1)--(1,1)--(1,2)--(-1,2)--cycle));
draw((1,1.7)--(1.8,1.7),arrow = Arrow(6));
label("$T$",(1.4,1.7),N);
draw((0,1.5)--(-.9,1.5),arrow=Arrow(6));
label("$F_b$",(-.3,1.5),S);

draw((2,.5)--(3,.5));
draw((3,1.5)--(1,1.5));
draw(shift(3,1)*scale(.5)*unitcircle);
draw((3,1)--(4,1), arrow = Arrow(6));

//label("$2m$",(0,.5));
//label("$m$",(0,1.5));