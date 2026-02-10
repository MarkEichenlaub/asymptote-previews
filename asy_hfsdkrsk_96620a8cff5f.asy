//TeXeR source: https://artofproblemsolving.com/texer/hfsdkrsk

unitsize(4cm);

path cup = (-.2,1)--(0,0)--(.5,0)--(.7,1);
path closedcup = cup--cycle;

fill(box((.1,.7),(.4,.875)), palered);

fill((-.175,.875)--(0,0)--(.5,0)--(.675,.875)--cycle, cyan);
draw(cup, linewidth(2pt));

filldraw(box((.1,.7),(.4,.95)), white+linewidth(2pt));
fill(box((.1,.7),(.4,.875)), palered);
draw(box((.1,.7),(.4,.95)));

draw((-.175,.875)--(0,0)--(.5,0)--(.675,.875)--cycle, linewidth(1.5pt)+red+dashed );

label("$V_d$",(.25,.77));
label("$V_w$",(.25,.4));
label("$V_{\rm surface}$",(.6,.5),E,red);