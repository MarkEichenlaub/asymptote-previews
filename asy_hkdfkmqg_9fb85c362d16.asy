import solids;
defaultpen(fontsize(10pt));
size(1.6cm);

material M = material(diffusepen=gray(0.8), black, gray(0.2));

real l = 1/sqrt(3);
revolution sph = revolution(O, Arc(O, (l, l, -l - 0.01), (-l, -l, l), 50), (-1, -1, 1));
draw(surface(sph, 100), M);
draw(sph.silhouette(), gray(0.3));
draw("$\vec F$", (0, -1)--(1.5, -1), Arrow(TeXHead));
label("Sphere", dir(90), dir(90));

real s = -3.5;

filldraw(shift(s, 0)*(unitcircle^^reverse(scale(0.8)*unitcircle)), gray(0.8), gray(0.3));
draw("$\vec F$", shift(s, 0)*((0, -1)--(1.5, -1)), Arrow(TeXHead));
label("Hoop", shift(s, 0)*dir(90), dir(90));

filldraw(shift(2*s, 0)*unitcircle, gray(0.8), gray(0.3));
draw("$\vec F$", shift(2*s, 0)*((0, -1)--(1.5, -1)), Arrow(TeXHead));
label("Disk", shift(2*s, 0)*dir(90), dir(90));