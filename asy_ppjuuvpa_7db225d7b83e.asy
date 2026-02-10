//TeXeR source: https://artofproblemsolving.com/texer/ppjuuvpa

unitsize(4cm);

path cup = (-.2,1)--(0,0)--(.5,0)--(.7,1);
path closedcup = cup--cycle;

fill((-.175,.875)--(0,0)--(.5,0)--(.675,.875)--cycle, cyan);
draw(cup, linewidth(2pt));

filldraw(box((.1,.7),(.4,.9)), white+linewidth(2pt));

filldraw(circle((.25,.8),.05), gray);