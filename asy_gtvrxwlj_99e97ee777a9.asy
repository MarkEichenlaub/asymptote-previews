size(4cm);
defaultpen(fontsize(10pt));

real ell = 2;

draw((0, -ell/2)--(0, ell/2));
dot("$X$", (0, -ell/2), dir(-90));
dot("$Y$", (0, ell/2), dir(90));

dot("$Z$", (1, ell/2), dir(45));

draw("$2v/3$", align=dir(90), (1, ell/2)--(0, ell/2), Arrow(TeXHead), Margin(1, 4));
draw("$v/3$", align=dir(-40), (0, 0)--(1/2, 0), Arrow(TeXHead), Margin(1, 1));

label("$\otimes$", (1/3, ell/6));