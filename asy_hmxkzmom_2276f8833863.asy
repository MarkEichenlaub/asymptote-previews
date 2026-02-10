unitsize(.2cm);
pair wind = (0, 1),
     plane = 10 * dir(10),
     planeg = wind + plane;

draw((0,0)--wind,arrow=Arrow(6));
label("$\vec{v}_{\mathrm{wind}}$", (0, 0)--wind, W);
draw((0, 0)--plane, Arrow(6));
label("$\vec{v}_{\mathrm{plane;w}}$", (0, 0)--plane);

draw((0,0)--planeg, Arrow(6));
draw(plane--planeg, Arrow(6));
label("$\vec{v}_{\mathrm{plane;g}}$", (0, 0)--planeg, dir(120));

draw((0,0)--(planeg.x,0), dotted);

real g_angle = aTan(planeg.y/planeg.x);

draw( arc((0,0), 3, 0, g_angle), red);

real w_angle = aTan(plane.y/plane.x);
draw( arc((0,0), 4, 0, w_angle), blue+linewidth(1.5pt));