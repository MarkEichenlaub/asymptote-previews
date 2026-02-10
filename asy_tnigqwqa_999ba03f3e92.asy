//TeXeR source: https://artofproblemsolving.com/texer/tnigqwqa

unitsize(2cm);

fill((-.25,.625)--(.25,.375)--(.35,.575)--(-0.15,.825)--cycle);
//label("$m$",(0,.7));

fill((-1,0)--(1,0)--(-1,1)--cycle,gray);
draw((-3,0)--(3,0),linewidth(2pt));
//label("$M$",(-1,.5),W);
draw((-.6,.2)--(-.6,-1),arrow = Arrow(6),blue);
draw((0,.5)--(-.5,-.5),arrow =Arrow(6),blue);
draw((-.7,0)--(-.7,1.5),arrow = Arrow(6),blue);

draw(arc((1,0),(.7,0),(-1,1),direction = CW));
label("$\theta$",(.6,.1));

draw((-.1,.7)--(-.1,.1),arrow = Arrow(6),red);
draw((0,.5)--(.5,1.5),arrow = Arrow(6),red);