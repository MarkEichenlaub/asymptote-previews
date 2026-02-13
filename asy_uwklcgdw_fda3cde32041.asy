size(8cm);

real xscale = 1, yscale = 8;
real xint = 2, yint = 20;
real xmax = 26, ymax = 120;
real eps = 0.2;

draw(box((0, 0), (xmax/xscale, ymax/yscale)));

path plot = (0, 80)--(2, 80)--(2, 60)--(4, 60)--(4, 80)--(22, 80)--(22, 100)--(24, 100)--(24, 80)--(26, 80);
draw(scale(1/xscale, 1/yscale)*plot, linewidth(1.5));

for(real x = 0; x <= xmax; x += xint){
    draw((x/xscale, -eps)--(x/xscale, eps));
    draw((x/xscale, ymax/yscale-eps)--(x/xscale, ymax/yscale+eps));
    label(scale(0.75)*string(x), (x/xscale, -eps), dir(-90));
}
for(real y = 0; y <= ymax; y += yint){
    draw((-eps, y/yscale)--(eps, y/yscale));
    draw((xmax/xscale-eps, y/yscale)--(xmax/xscale+eps, y/yscale));
    label(scale(0.75)*string(y), (-eps, y/yscale), dir(-180));
}

label(scale(0.75)*"Time (s)", (xmax/xscale/2, -2), dir(-90));
label(rotate(90)*scale(0.75)*"Scale reading (kg)", (-2.5, ymax/yscale/2), dir(-180));