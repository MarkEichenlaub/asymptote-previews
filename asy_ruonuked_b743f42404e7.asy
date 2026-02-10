size(4cm);

draw((1, 0)--(0.5, 0), red, Arrow(TeXHead));
label("$\frac{GMm}{r^2}$",(.65,0),S);
draw(unitcircle, dotted);
draw((1,0)--(1,-.3), Arrow(TeXHead));
label("$\vec{v}$",(1,-.3),E);
dot(dir(0));