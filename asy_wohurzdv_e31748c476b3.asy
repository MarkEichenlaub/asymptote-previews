unitsize(1.5cm);
draw((0,0)--(0,3));
draw((1,0)--(1,3));
draw((0,2)--(1,2), dotted);
draw((0,2.1)--(1,2.1),dotted);
fill((0,2)--(1,2)--(1,2.1)--(0,2.1)--cycle,gray);

draw((.6,2.05)--(.6,1.5),arrow = Arrow(6));
label("$F_{\mathrm{gravity}}$",(.6,1.6),E);

draw((.5,3)--(.5,2.1),arrow = Arrow(6));
label("$F_{\mathrm{pressure, \, above}}$",(.5,2.5),E);

draw((.5,.6)--(.5,2),arrow = Arrow(6));
label("$F_{\mathrm{pressure,\, below}}$",(.5,.8),E);