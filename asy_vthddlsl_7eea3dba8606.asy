size(0, 3cm);

draw((0, -1) -- (0, 1));

draw((0.1, -0.5) -- (0.1, -0.1), arrow=Arrow);
draw((0.1, 0.5) -- (0.1, 0.1), arrow=Arrow);
label("$T$", (0.15, 0), right);

fill(circle((0, -1), 0.1));
label("$m$", (0.1, -1), right);
fill(circle((0, 1), 0.1));
label("$m$", (0.1, 1), right);

draw((-0.3, -1) -- (-0.3, 1), dotted);
draw((-0.35, -1) -- (-0.25, -1), dotted);
draw((-0.35, 1) -- (-0.25, 1), dotted);
label("$l$", (-0.3, 0), left);

draw((0.7, -0.5) -- (1.5, -0.5), arrow=Arrow);
label("$v$", (1.1, -0.5), up);