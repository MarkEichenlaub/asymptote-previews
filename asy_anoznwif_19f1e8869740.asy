size(5cm);
defaultpen(fontsize(10pt));

real eps = 0.3;

draw((0,0)--(6 + eps,0), Arrow(TeXHead));
draw((0,0)--(0, 5.5 + eps), Arrow(TeXHead));
label("$0$",(0,0),SW);
label("$2$",(2,0),S);
label("$4$",(4,0),S);
label("$6$",(6,0),S);
label("Time (ms)",(3,-.75),S);
label(rotate(90)*"Force",(-.7,3),W);
label("$F_{\mathrm{max}}$",(0,5),W);
draw((0,5)--(6,5),dotted);
draw((2,0)--(2,5),dotted);
draw((4,0)--(4,5),dotted);
draw((0,0)--(2,5)--(4,5)--(6,0),red);