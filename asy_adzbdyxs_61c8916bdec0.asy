//TeXeR source: https://artofproblemsolving.com/texer/adzbdyxs

unitsize(4cm);

path cup = (-.2,1)--(-.2,0)--(.7,0)--(.7,1);
path closedcup = cup--cycle;

fill((-.2,.875)--(-.2,0)--(.7,0)--(.7,.875)--cycle, cyan);
draw(cup, linewidth(2pt));

filldraw(box((.1,.7),(.4,.95)), white+linewidth(2pt));