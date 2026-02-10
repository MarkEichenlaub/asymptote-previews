unitsize(4cm);

dot((0,0));
label("$\mathcal{O}$",(0,0),S);

real r = 1;
real theta = 0;

pair p = r*dir(theta);

dot(p,6+black);
label("planet",p,SE);

draw((0,0)--p, dotted);
label("$r$",p/2,N);

pair v = scale(.3)*rotate(90)*p;

draw(shift(p)*((0,0)--v), arrow = Arrow(6), blue+linewidth(2pt));
label("$v$",p + v/2,E,blue);

draw(circle((0,0),r), dashed);