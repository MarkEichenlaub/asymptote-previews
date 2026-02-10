unitsize(1cm);

pair vplanew = 10*dir(10);

draw((0,0)--vplanew, Arrow(6));
draw((0,0)--(vplanew.x, 0), dotted);
draw((vplanew.x, 0)--vplanew, dotted);
label("$\vec{v}_{\mathrm{plane;w} = 300 \;\mathrm{m/s}}$", (0, 0)--vplanew, dir(100));
label("$\vec{v}_{\mathrm{plane;w;E}}$", (0, 0)--(vplanew.x, 0), S);
label("$\vec{v}_{\mathrm{plane;w;N}}$", (vplanew.x, 0)--vplanew, E);

real w_angle = aTan(vplanew.y/vplanew.x);
draw( arc((0,0), 4, 0, w_angle), blue+linewidth(1.5pt));
label("$10^\circ$",dir(5)*4,E,blue);