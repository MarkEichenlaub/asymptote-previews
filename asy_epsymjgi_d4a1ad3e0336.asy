size(4cm);
defaultpen(fontsize(10pt));

real r = 0.1, eps = 0.02;
draw(unitcircle);
draw(circle((1+r)*dir(90), r), dashed);

real theta = 35;
draw(circle((1+r+eps)*dir(theta), r));

draw("$h$", (0, 0)--(0, Sin(theta)), Bars(5));
draw(dir(theta)--(0, Sin(theta)), dotted);