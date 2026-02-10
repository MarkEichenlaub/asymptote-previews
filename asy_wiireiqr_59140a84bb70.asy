unitsize(5cm);

dot((0,1.1), 5+black);

filldraw(unitcircle, lightgray);

//label("Earth $(\oplus)$",(0,.9));
label("ISS",(0,1.1),E);

dot((0,0),5+black);

draw((0,0)--(0,1.1), dotted);
label("$r_{\oplus I}$",(0,.5),W);

draw(shift(0.01,.00)*((0,1.09)--(0,0.8)), arrow = Arrow(6),red);
label("$\vec{F}_{g; \oplus \to I}$",(0,.9),E,red+fontsize(14pt));