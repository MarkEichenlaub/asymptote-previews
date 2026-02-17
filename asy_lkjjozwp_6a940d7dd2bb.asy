draw((0,2)--(0,0)--(1,0)--(1,2),linewidth(2pt));
draw((0,1.5)--(1,1.5));
label("cap",(1,1.5),E);

draw((-.05,0)--(-.05,1.5),arrow = Arrow(6),dotted);
draw((-.05,1.5)--(-.05,0),arrow = Arrow(6),dotted);
label("$h$",(-.05,1),W);

draw((.5,.07)--(.98,.07),arrow = Arrow(6),dotted);
draw((.98,.07)--(.5,.07),arrow = Arrow(6),dotted);
label("$r$",(.75,.07),N);