//TeXeR source: https://artofproblemsolving.com/texer/odlshdys

unitsize(2cm);
dot((0,1));
label("$q$",(0,1),E);

dot((0,-1));
label("$-q$",(0,-1),E);

dot((4,4));
label("$P$", (4,4), NE);

draw((0,0)--(4,4),dotted);
label("$r$",(2,2),SE);

draw((0,1)--(4,4),dotted);
label("$r-\mathrm{d}r$",(2,2.5),NW);

draw((0,0)--(0,1),dotted);
label("$d/2$",(0,.5),W);

draw(arc((0,0),.5,45,90));
label("$\theta$",(.25,.55));

dot((0,0));
label("$\rm O$",(0,0),W);