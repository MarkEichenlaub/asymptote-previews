size(4cm);
defaultpen(fontsize(10));

draw(shift(-1, 0)*unitsquare);
fill(box((-5/3, -0.2), (2/3, 0)), gray(0.8));
draw((-5/3, 0)--(2/3, 0));

filldraw(scale(0.05)*unitcircle, white);

dot("$m$", (-5/3, 1), dir(90));
draw("$v$", align=dir(90), (-5/3, 1)--(-1, 1), Arrow(TeXHead), Margin(2, 2));