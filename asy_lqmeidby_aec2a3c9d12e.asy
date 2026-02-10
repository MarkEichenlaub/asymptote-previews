//TeXeR source: https://artofproblemsolving.com/texer/lqmeidby

draw((-3,0)--(1.8,0),linewidth(2pt));
draw((2.2,0)--(3,0),linewidth(2pt));

fill((-2,0)--(-1,0)--(-1,1)--(-2,1)--cycle,gray);
draw((-1,.5)--(0,.5),arrow = Arrow(6));
label("$T$",(-.5,.5),N);

fill((1.5,-1.4)--(2.5,-1.4)--(2.5,-2.4)--(1.5,-2.4)--cycle,gray);
draw((2,-2)--(2,-3.5),arrow = Arrow(6));
label("$Mg$",(2,-3),E);
draw((2.1,-1.4)--(2.1,-.41),arrow = Arrow(6));
label("$T$",(2.1,-.5),E);

draw(shift(1.9,.1)*scale(.1)*unitcircle);

draw((-1,.2)--(1.9,.2));
draw((2,.1)--(2,-1.4));