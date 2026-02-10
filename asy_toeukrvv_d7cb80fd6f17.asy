//TeXeR source: https://artofproblemsolving.com/texer/toeukrvv

unitsize(4cm);

path cup = (-.2,1)--(0,0)--(.5,0)--(.7,1);
path closedcup = cup--cycle;

fill((-.175,.875)--(0,0)--(.5,0)--(.675,.875)--cycle, cyan);
draw(cup, linewidth(2pt));

filldraw(box((.1,.7),(.4,.95)), white+linewidth(2pt));

draw((.7,.5)--(1.1,.5), arrow = Arrow(6));

pair s = (1.3,0);
fill(shift(s)*((-.15,.75)--(0,0)--(.5,0)--(.65,.75)--cycle), cyan);
draw(shift(s)*cup, linewidth(2pt));
filldraw(shift(s)*shift(0,.3)*box((.1,.7),(.4,.95)), white+linewidth(2pt));