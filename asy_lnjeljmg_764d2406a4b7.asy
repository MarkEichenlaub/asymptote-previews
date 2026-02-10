//TeXeR source: https://artofproblemsolving.com/texer/lnjeljmg

unitsize(2cm);

fill((-.25,.625)--(.25,.375)--(.35,.575)--(-0.15,.825)--cycle);
label("$m$",(0,.7),N);

fill((-1,0)--(1,0)--(-1,1)--cycle,gray);
label("$M$",(-1,.5),W);

draw(arc((1,0),(.7,0),(-1,1),direction = CW));
label("$\theta$",(.6,.1));

draw((-3,0)--(3,0),linewidth(2pt));