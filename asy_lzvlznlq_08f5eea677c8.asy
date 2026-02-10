//TeXeR source: https://artofproblemsolving.com/texer/lzvlznlq

unitsize(4cm);

path cup = (-.2,1)--(0,0)--(.5,0)--(.7,1);
path closedcup = cup--cycle;

fill((-.175,.875)--(0,0)--(.5,0)--(.675,.875)--cycle, cyan);
draw(cup, linewidth(2pt));

filldraw(box((.1,.7),(.4,.9)), white+linewidth(2pt));

filldraw(circle((.25,.95),.05), gray);

draw((-.6,.4)--(-.2,.4), arrow = Arrow(6));

pair s= (-1.5,0);
real w = 0.95;
fill(shift(s)*((w*(-.175,.875))--(0,0)--(.5,0)--(((.675,.875)-(.5,0))*w+(.5,0))--cycle), cyan);
draw(shift(s)*cup, linewidth(2pt));

filldraw(shift(s)*shift(0,.05)*box((.1,.7),(.4,.9)), white+linewidth(2pt));