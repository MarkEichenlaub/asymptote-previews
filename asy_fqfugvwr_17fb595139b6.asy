unitsize(3cm);

real gap = .5;

filldraw(shift(-1-gap/2,0)*unitcircle, lightgray);
filldraw(shift(1+gap/2,0)*unitcircle, lightgray);

draw((0,1.5)--(0,-1.5), dotted);
path s1 = (.075,1.5){0,-1}..(.1,0)..(.4,-1.5);
draw(s1,dotted);
draw(reflect((0,0),(0,1))*s1, dotted);

path s2 = (.15,1.5){0,-1}..(.2,0)..(.4,-.6)..(1,-1.1)..(1.5,-1.2);
draw(s2,dotted);
draw(reflect((0,0),(0,1))*s2, dotted);

//label("$A$",(0,0),UnFill);
//label("$B$",(.1,0),UnFill);
//label("$C$",(.2,0),UnFill);