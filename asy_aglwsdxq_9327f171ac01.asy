unitsize(4cm);

dot((0,0),yellow+16);
label("Sun",(0,0),2*S);

real r = 1;
real theta = 0;

pair p = r*dir(theta);

dot(p,10+black);
label("Earth",p,SE*1.5);

draw((0,0)--p, dotted);
label("$r$",p/2,N);

pair v = scale(.3)*rotate(90)*p;

//draw(shift(p)*((0,0)--v), arrow = Arrow(6), blue+linewidth(2pt));
//label("$v$",p + v/2,E,blue);

//draw(circle((0,0),r), dashed);

pair f = scale(.2)*rotate(90)*p;

draw(shift(0,-.05)*shift(p)*shift(-f)*((0,0)--f), arrow = Arrow(6), red);