unitsize(4cm);

real d = .5;

fill(unitcircle, lightgray);
real theta = -20;
draw((0,0)--(-Cos(theta),Sin(theta)),dotted);
label("$R$",(-.5,-.15),N);

fill(shift(d,0)*scale(.2)*unitcircle, gray);

real theta = -30;

draw(shift(d,0)*((0,0)--.2*(Cos(theta),Sin(theta))),dotted+white);
label("$r$",(.62,-.05),N,white);

dot("$\mathcal{O}$",(0,0));

draw((0,0)--(.5,0),dotted);
label("$d$",(.25,0),N);