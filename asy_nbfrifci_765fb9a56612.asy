unitsize(4cm);

real theta = 20;
real d = 0.3;

pair B = (1-d)*(Cos(theta),Sin(theta));
pair C = -1*d*(Cos(theta),Sin(theta));

draw(scale(1-d)*unitcircle,dotted);

dot((0,0));
label("$\mathcal{O}$",(0,0),S);

draw(scale(d)*unitcircle, dashed);

dot(C);
label("$C$",C,SW);

dot(B);
label("$B$",B,NE);

draw(shift(C)*unitcircle);

draw((0,0)--B,red+dotted);
draw((0,0)--(.7,0),red+dotted);

draw("$\theta$",arc((0,0),.5,0,theta),red);