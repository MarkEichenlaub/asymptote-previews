size(4cm);
defaultpen(fontsize(10pt));

real eps = 0.03;

draw(unitcircle, dotted);

draw((0, 0)--(1, 0));
draw(Label("$T$", align=dir(-90)), (1, -eps)--(0.5, -eps), red, Arrow(TeXHead, size=1.5));

dot((1, 0));
draw(Label("$\vec v$", Relative(1), dir(0)), (1, 0)--(1, 0.3), Arrow(TeXHead, size=1.5));