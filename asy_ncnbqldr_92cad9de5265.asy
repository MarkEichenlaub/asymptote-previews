path ball = circle((-0.5, 0), 0.5);
fill(ball, gray(0.7));
draw(ball);

draw(unitcircle);

draw((-1,0)--(1,0) ^^ (0,-1)--(0,1), dotted);
draw((-1.5, -1) -- (1.5, -1));

label("$m$", (-0.2, 0.6));
label("$m$", 1.2*dir(135));

draw((-1, -1.2) -- (0, -1.2), Arrows(TeXHead));
label("$2R$", (-0.5, -1.2), S);