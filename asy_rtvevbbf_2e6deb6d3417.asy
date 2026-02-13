import graph;
size(5cm);
defaultpen(fontsize(10pt));

real pi = radians(180);
real wallthickness = 0.7, wallheight = 4, poledist = 7, poleup = 3, poledown = 4;
int coils = 8;
real coil_r = 0.4;

// wall
fill(box((-wallthickness, wallheight/2), (0, -wallheight/2)), gray(0.8));
draw((0, wallheight/2)--(0, -wallheight/2));
draw((poledist, poleup)--(poledist, -poledown));

// spring
draw(graph(new pair(real t){ return (coil_r*sin(2*pi*coils/poledist*t) + t, -coil_r*cos(2*pi*coils/poledist*t)); }, 0, poledist, operator ..));

dot("$m$", (poledist, -coil_r), dir(0), linewidth(5));
label("$k$", (poledist/2, coil_r), dir(90));
label("$\ell$", (poledist/2, -coil_r), dir(-90));
label("$\mu$", (poledist, -2*poledown/3), dir(0));
label("pole", (poledist, poleup), dir(90));