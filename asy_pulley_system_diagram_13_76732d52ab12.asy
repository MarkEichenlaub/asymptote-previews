filldraw(unitcircle, lightgray);
dot((0,0));

draw((-1,-2)--(-1,0)--arc((0,0),1,180,0)--(1,0)--(1,-4), linewidth(2pt));

filldraw(box((1.5,-5),(.5,-4)), lightgray);
label("$M$",(1,-4.5));
filldraw(box((-1.5,-3),(-.5,-2)), lightgray);
label("$m$",(-1,-2.5));

draw((1.6,-4.5)--(1.6,-5.5), arrow = Arrow(6));
label("$v_{yM}$",(1.6,-5),E);

draw((-1.6,-2.5)--(-1.6,-1.5), arrow = Arrow(6));
label("$v_{ym}$",(-1.6,-2),W);