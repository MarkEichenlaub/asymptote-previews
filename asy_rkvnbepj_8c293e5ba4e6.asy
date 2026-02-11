size(5cm);
defaultpen(fontsize(10pt));

xaxis(Label("$t$", align=1.3*dir(0)), -1, 3, RightTicks(new real[]{0}, 3), EndArrow(TeXHead));
yaxis("$v$", Left(), 0, 2.3, EndArrow(TeXHead));

real eps = 0.01;
pen nice_blue = rgb(0, 0.6, 1) + linewidth(1.5), nice_green = rgb(0, 0.4, 0) + linewidth(1.5);
draw((-1, 2)--(0, 2), nice_blue);
draw("$v$", reverse((0, 2)--(1.5, 1)), nice_blue);
draw((1.5, 1+eps)--(3, 1+eps), nice_blue);
draw((-1, 0)--(0, 0), nice_green);
draw("$R\omega$", (0, 0)--(1.5, 1), nice_green);
draw((1.5, 1-eps)--(3, 1-eps), nice_green);