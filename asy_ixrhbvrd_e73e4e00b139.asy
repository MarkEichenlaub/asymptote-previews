unitsize(3cm);
draw((0,0)--(0,1),linewidth(2pt));
draw((4,0)--(4,1),linewidth(2pt));

draw((-.25,1.06)..(0,1)..(2,.8)..(4,1)..(4.25,1.06));
draw((-.25,1)--(4.25,1),dashed);

draw((2.1,.8)--(2.1,1),dotted);

label("$y$",(2.1,.9),E);

draw((2,1.8)--(2,.8),arrow=Arrow(6),red);
label("$F$",(2,1.6),E,red);