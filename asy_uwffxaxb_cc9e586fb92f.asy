//TeXeR source: https://artofproblemsolving.com/texer/uwffxaxb

unitsize(.5cm);

draw((0,0)--(10,0),linewidth(2pt));

real r = .2;

filldraw(shift(5,-7)*scale(r)*unitcircle, lightgray);
filldraw(shift(5,-9)*scale(r)*unitcircle,lightgray);

draw((5,0)--(5,-6.8),linewidth(.5pt));
draw((5,-7.2)--(5,-8.8),linewidth(.5pt));

draw((5.5,-9)--(5.5,-7), dotted+deepblue);
label("200 m",(5.5,-8),E,deepblue);

draw((4.5,0)--(4.5,-7), dotted+deepgreen);
label("1856 m",(4.5,-3.5),W,deepgreen);

filldraw(shift(5,.2)*scale(.5)*unitcircle,lightgray);
label("boat",(5,.7),N);

label("cable",(5,-3),E);

label("submersible",(5,-7),W);
label("submersible",(5,-9),S);

label("ocean surface",(9,0),NE);