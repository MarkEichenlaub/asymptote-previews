real a = 2;
real b = 1;
real c = sqrt(a^2 - b^2);


fill((-c,0)--(0,1)--(xscale(a)*arc((0,0),1,90,270))--cycle,gray);


draw(xscale(a)*yscale(b)*unitcircle);

dot((-c,0));

draw("$b$",(0,0)--(0,1),dotted);
draw("$a$",(0,0)--(2,0),dotted);

draw((-c,0)--(-2,0),red);
label("$r$",(-2,0),W,red);