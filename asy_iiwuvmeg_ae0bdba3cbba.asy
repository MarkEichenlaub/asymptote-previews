unitsize(0.2cm);

pair wind = (0, 1),
     plane = 10 * dir(10);

draw((0,0)--wind, Arrow(6));
label("$\vec{v}_{\mathrm{wind}}$", (0, 0)--wind, W);
draw((0, 0)--plane, Arrow(6));
label("$\vec{v}_{\mathrm{plane;w}}$",(0, 0)--plane);