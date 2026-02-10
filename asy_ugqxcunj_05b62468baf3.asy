import graph;

pen nice_red = rgb(1, 0.2, 0.4);

real pi = 4 * atan(1);
real eps = 0.1;
real xmax = 1 + eps, ymax = xmax;

size(8cm);
xaxis(0, xmax, EndArrow(TeXHead));
yaxis(0, ymax, EndArrow(TeXHead));
label("$t$", (xmax, 0), dir(0));
label("$v$", (0, ymax), dir(0));

real y(real t){
return 0.4*sin(3*pi*t);
}

draw(graph(y, 0, 1));

real dt = 0.1;
real x_1 = 1/6 - dt;
real x_2 = 1/6 + dt;

draw((x_1, 0)--(x_1, y(x_1)), nice_red + linewidth(1));
draw((x_2, 0)--(x_2, y(x_2)), nice_red + linewidth(1));