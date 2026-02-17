size(5cm);
defaultpen(fontsize(10pt));

pen n_blue = rgb(0.0, 0.6, 1.0),
    n_green = rgb(0.0, 0.4, 0.0);

real boatsize = 1/16;
path boat = arc((0, -boatsize), boatsize, 0, 180)--(-boatsize, -5*boatsize)--(boatsize, -5*boatsize)--cycle;

draw(shift(0.8*dir(-90))*(boat), n_blue);
draw(0.8*dir(-90)--(0, 0)--dir(72), n_blue+dashed, EndArrow(TeXHead));

draw((0, 0)--dir(90), dotted);
draw("$18^\circ$", arc((0, 0), 0.7, 72, 90), dir(81));

draw(shift(0.8*dir(180))*rotate(-90)*(boat), n_green);
draw(0.8*dir(180)--(0, 0), n_green+dashed, EndArrow(TeXHead));