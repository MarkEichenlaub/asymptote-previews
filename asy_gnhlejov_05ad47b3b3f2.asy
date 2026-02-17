size(5cm);
defaultpen(fontsize(10pt));

real theta = 25, ell = 1;
draw(ell/Cos(theta)*dir(180 - theta)--(0, 0)--ell*W);
draw("$\theta$", arc((0, 0), 0.2*ell, 180 - theta, 180));

transform tr = rotate(-theta)*shift(-0.7*ell, 0)*scale(0.2*ell)*shift(-1/2, 0);
real a = 0.8, b = 1;
draw(tr*box((0, 0), (b, a)));

label("$a$", tr*reverse((0, 0)--(0, a)));
label("$b$", tr*reverse((0, a)--(b, a)));