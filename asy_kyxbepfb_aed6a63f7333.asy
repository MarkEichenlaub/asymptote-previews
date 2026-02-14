draw(unitcircle);
fill(box((-.2,2),(.2,2.1)));
fill(box((-.2,2.4),(.2,2.5)));
draw((0,2)--(0,2.4));

draw((.3,2.05)--(.3,2.45),dotted);
label("$2\Delta x$",(.3,2.25),E);

draw((0,0)--(0,2.2),dashed+gray);
label("$x$",(0,1.4),W);