size(3.5cm);
defaultpen(fontsize(10pt));

draw((-1.5, 0)--(0, 0)--(0, -3.5));
draw((0, 0)--(1, 1));
draw(shift(1, 1)*unitcircle);

draw((2, 1)--(2, -1.5));
draw(shift(1.5, -2.5)*unitsquare);

label("$M$", (1, 1), dir(90));
label("$m$", (2, -2));