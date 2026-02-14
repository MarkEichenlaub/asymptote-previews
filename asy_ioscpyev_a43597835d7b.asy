draw((-1,-1)--(0,0)--(1,-1));

dot((0,-.5));

draw((.5,-.5)--(0,-.5), arrow = Arrow(6),red);
draw((-.5,-.5)--(0,-.5), arrow = Arrow(6),red);

draw((-.5,-.5)--(-.25,-.75), arrow = Arrow(6), red+dotted);
draw((-.5,-.5)--(-.25,-.25), arrow = Arrow(6), red+dotted);
//draw((-.25,-.75)--(0,-.5), red+dotted);
label("$N$",(-.375,-.625),SW,red);
label("$F_f$",(-.375,-.375),NW,red);