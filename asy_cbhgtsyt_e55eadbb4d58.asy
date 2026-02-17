size(3cm);

real ell = 2;

draw((0, -ell/2)--(0, ell/2));
dot((0, -ell/2));
dot((0, ell/2));

dot((1, ell/2));

draw("$v$", align=dir(90), (1, ell/2)--(0, ell/2), Arrow(TeXHead), Margin(1, 3));