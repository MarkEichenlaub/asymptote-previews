real a = 1.5;
real b = 1;
real c = sqrt(a*a - b*b);

draw(xscale(a)*unitcircle);

dot((0,0));

dot((c,0));

draw("$c$",(0,0)--(c,0),dotted);
draw("$b$",(0,0)--(0,1),dotted);
draw("$a$",(0,0)--(-a,0),dotted);