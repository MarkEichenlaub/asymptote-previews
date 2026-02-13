size(4cm);
defaultpen(fontsize(10pt));

draw((-1.5, 0)--(0, 0)--(0, -3.5));
draw((0, 0)--(1, 1));
draw(shift(1, 1)*unitcircle);

draw((2, 1)--(2, -1.5));
draw(shift(1.5, -2.5)*unitsquare);

label("$M$", (1, 1), dir(90));
label("$m$", (2, -2));

real eps = 0.15;
draw(shift(eps, eps/2)*((2, -1.5)--(2, -1)), rgb(0.7, 0.4, 1.0), Arrow(TeXHead));
draw(shift(eps, 0)*((2, 1)--(2, 0.5)), rgb(0.7, 0.4, 1.0), Arrow(TeXHead));
draw((2, -2.5)--(2, -3.3), rgb(0, 0.6, 1.0), Arrow(TeXHead));

label("$T$", (2 + eps, -1), dir(0));
label("$T$", (2 + eps, 0.5), dir(0));
label("$mg$", (2, -3.3), dir(0));