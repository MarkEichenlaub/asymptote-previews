unitsize(5cm);

//dot((0,1.1), 5+black);
filldraw(unitcircle, palegray);

filldraw(scale(.6)*unitcircle, gray);

//label("Earth $(\oplus)$",(0,.9));
//label("ISS",(0,1.1),E);

dot((0,0),5+black);

draw((0,0)--(0,0.6), dotted);
label("$r$",(0,.3),W);

draw(circle((0,0),.6), linewidth(2pt));

label("light colored mass can be ignored",(0,-1),S);