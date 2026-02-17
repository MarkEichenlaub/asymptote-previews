import graph;
size(10cm);

real eps = 0.2, eps2 = 0.03;
real xmin = 0, xmax = 4 + eps,
    ymin = -1 - eps, ymax = -ymin;

draw((xmin, 0)--(xmax, 0), EndArrow(TeXHead));
draw((0, ymin)--(0, ymax), Arrows(TeXHead));
label("$x$", (xmax, 0), dir(-90));

real xint = 0.25, yint = 0.25;
for(real x = 0; x <= xmax; x += xint)
    draw((x, -eps2)--(x, eps2));
for(real y = -4*yint; y <= ymax; y += yint)
    draw((-eps2, y)--(eps2, y));

real lam = 2;
real wave(real t){ return sin(2*pi/lam*t); }
pair wavept(real t){ return (t, wave(t)); }
draw(graph(wave, 0, 4), rgb(1.0, 0.2, 0.4));

draw("$\lambda$", wavept(lam/4)--wavept(5*lam/4), rgb(0.0, 0.6, 1.0) + linewidth(1), Arrows(TeXHead));
draw("$\lambda$", wavept(lam/2)--wavept(3*lam/2), rgb(0.0, 0.6, 1.0) + linewidth(1), Arrows(TeXHead));
draw("$\lambda$", wavept(3*lam/4)--wavept(7*lam/4), rgb(0.0, 0.6, 1.0) + linewidth(1), Arrows(TeXHead));