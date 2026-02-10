//TeXeR source: https://artofproblemsolving.com/texer/briayhde

unitsize(4cm);

path cup = (-.2,1)--(0,0)--(.5,0)--(.7,1);
path closedcup = cup--cycle;

fill((-.175,.875)--(0,0)--(.5,0)--(.675,.875)--cycle, cyan);
draw(cup, linewidth(2pt));

filldraw(box((.1,.7),(.4,.95)), white+linewidth(2pt));

pair center = (.25,.7/2+.95/2);

real f = .4;
draw(shift(center)*((0,0)--(0,-f)), arrow = Arrow(6), red+linewidth(2pt));
label("$mg$",center + (0,-f),S,red);