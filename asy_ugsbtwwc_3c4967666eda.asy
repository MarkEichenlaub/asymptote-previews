size(5cm);
path ball = circle((0, -0.5), 0.5);
draw(ball, linewidth(1));
fill(ball, grey);

draw(unitcircle, linewidth(1));

draw((-1,0)--(1,0) ^^ (0,-1)--(0,1), dotted);
draw((-1.5, -1) -- (1.5, -1));

dot("$-\frac R2$", (0, -1), S);