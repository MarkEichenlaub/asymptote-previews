draw((0,0)--(1,-2), arrow = Arrow(6));
draw((0,0)--(1,0), dotted);
label("$v_{x; A}$",(.5,0),N);
label("$v_{y; A}$",(1,-1),E);
draw((1,0)--(1,-2), dotted);
label("$v_A$",(.5,-1),SW);
dot((0,0),black+6);

draw((-.2,-.2)--(1.4,-.2), brown+linewidth(2pt));
label("ground", (1.4,-.2),E,brown);