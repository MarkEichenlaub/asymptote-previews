size(4cm);
defaultpen(fontsize(10pt));

fill(box((-0.2, -0.3), (0, 1.3)), gray(0.8));
draw((0, -0.3)--(0, 1.3));
draw(unitsquare);

unfill(scale(0.03)*unitcircle); draw(scale(0.03)*unitcircle);
unfill(shift(1, 0)*scale(0.03)*unitcircle); draw(shift(1, 0)*scale(0.03)*unitcircle);
unfill(shift(1, 1)*scale(0.03)*unitcircle); draw(shift(1, 1)*scale(0.03)*unitcircle);
unfill(shift(0, 1)*scale(0.03)*unitcircle); draw(shift(0, 1)*scale(0.03)*unitcircle);

draw((1/2, 1)--(1, 1/2));

draw(Label("$F_x$", Relative(1), align=dir(90)), shift(0, 0.04)*((0, 0)--(1/3, 0)), rgb(0, 0.6, 1), Arrow(TeXHead));
draw(Label("$mg$", Relative(1), align=dir(0)), (1/2, 0)--(1/2, -1/3), rgb(1, 0.4, 0.1), Arrow(TeXHead));
draw(Label("$mg$", Relative(1), align=dir(180)), (1/2, 1)--(1/2, 1-1/3), rgb(1, 0.4, 0.1), Arrow(TeXHead));
draw(Label("$mg$", Relative(1), align=dir(0)), shift(0.03, 0)*((1, 1/2)--(1, 1/2-1/3)), rgb(1, 0.4, 0.1), Arrow(TeXHead));