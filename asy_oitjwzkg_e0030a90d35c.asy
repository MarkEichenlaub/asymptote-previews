size(5cm);
path ball = circle((-0.5, 0), 0.5);
draw(ball, linewidth(1));
fill(ball, grey);

draw(unitcircle, linewidth(1));

draw((-1,0)--(1,0) ^^ (0,-1)--(0,1), dotted);
draw((-1.5, -1) -- (1.5, -1));

label("$m$", (-0.2, 0.6));
label("$m$", 1.2*dir(135));

dot("$0$", (0, -1), S);
dot("$-R$", (-0.5, -1), S);