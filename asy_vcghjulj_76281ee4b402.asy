unitsize(1 cm);

real gamma = 1.25;
real v = .6;
real u = .36;
real uL = (.6 + .36)/(1 + .6*.36);
real G = 3/gamma;
real L = -5/gamma;
real t = 100;
real A = 0;

label("L",(L,0),S);
//label("A",(0,0),S);
//label("G",(3,0),S);

dot((L,0),5+black);
//dot((0,0),5+black);
//dot((3,0),5+black);

//draw(shift(-4.9,0)*((0,0)--(5/3,0)), arrow = Arrow(6));
//draw(shift(2.9,0)*((0,0)--(-1,0)), arrow = Arrow(6));
//label("$v$",(-4,0),N);
//label("$u$",(2.4,0),N);

picture clock(real t){
picture lc;
draw(lc, scale(.25)*unitcircle);
draw(lc, scale(.25)*rotate(- t)*((0,0)--(0,1)));
return scale(.6)*lc;
}

add(shift(L,.5)*scale(1.5)*xscale(1/gamma)*clock(0));
add(shift(A,.5)*scale(1.5)*xscale(1/gamma)*clock(v^2*t));
add(shift(G,.5)*scale(1.5)*xscale(1/gamma)*clock(v*(v+u)*t));

draw(shift(0,1)*((L,0)--(A,0)), brown+dotted+1bp, Arrows(2mm));
label("$\frac{vt}{\gamma}$",(L/2,1),brown,UnFill);
draw(shift(0,1)*((A,0)--(G,0)), brown+dotted+1bp, Arrows(2mm));
label("$\frac{ut}{\gamma}$",((A+G)/2,1),brown, UnFill);