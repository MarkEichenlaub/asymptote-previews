//TeXeR source: https://artofproblemsolving.com/texer/dmoutqnn

unitsize(1cm);

dot((0,1));
label("$q$",(0,1),E);

dot((0,-1));
label("$-q$",(0,-1),E);

draw(arc((0,0),.5,45,90));

dot((4,4));
label("$P$", (4,4), NE);

draw((0,0)--(4,4),dotted);
//label("$r$",(2,2),SE);

draw((0,1)--(4,4),dotted);
//label("$r-\mathrm{d}r$",(2,2.5),NW);

draw(shift(4,4)*scale(5)*unitcircle);

label("$\mathrm{d}r$",(0,0),E);

draw((-.8,-1.4)--(.8,-1.4)--(.8,1.4)--(-.8,1.4)--cycle,linewidth(2pt));

draw((0,0)--(0,1),dotted);
label("$d/2$",(0,.5),W);