unitsize(1cm);

draw( (-7,0)--(-2,0), linewidth(3pt));
draw((-4.6,-.8)--(-4.4,-.8)--(-4.5,0)--cycle);
draw((-7,0)--(-7,.3));
draw(shift(-7,.8)*xscale(.7)*scale(.5)*unitcircle);
label("(a)",(-4.5,-1.5));


draw( (0,0)--(5,0), linewidth(3pt));
draw(shift(-1,0)*((2.4,-.8)--(2.6,-.8)--(2.5,0)--cycle));
draw((0,0)--(0,.3));
draw(shift(0,.8)*xscale(.7)*scale(.5)*unitcircle);
label("(b)",(2.5,-1.5));

draw( (7,0)--(12,0), linewidth(3pt));
draw(shift(1,0)*((9.4,-.8)--(9.6,-.8)--(9.5,0)--cycle));
draw((7,0)--(7,.3));
draw(shift(7,.8)*xscale(.7)*scale(.5)*unitcircle);
label("(c)",(9.5,-1.5));