//TeXeR source: https://artofproblemsolving.com/texer/xkzwpbyo

size(7cm);
defaultpen(fontsize(10pt));

real eps = 0.1;
draw((-1 - eps, 0)--(1 + eps, 0));

real r = 0.15;
draw(circle((-1, r), r)); label("L", (-1, r));
draw(circle((0, r), r)); label("H", (0, r));
draw(circle((1, r), r)); label("M", (1, r));

draw(shift(-0.2, -0.15)*scale(0.15)*polygon(3));