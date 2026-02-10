unitsize(1 cm);

real gamma = 1.25;
real v = .6;
real u = .36;
real uL = (.6 + .36)/(1 + .6*.36);
real gamma2 = 1/sqrt(1 - uL^2);
real c3 = 3/gamma;
real L = -5/gamma;
real t = 5/v;
real T = 100;
real A = 0;
real G = c3 - gamma*(u+v)*t*v*(uL-v);

label("L",(L,0),S);
label(xscale(1/gamma)*"A",(A,0),S);
label(xscale(1/gamma2)*"G",(G,0),S);

dot((L,0),5+black);
dot((A,0),5+black);
dot((G,0),5+black);

draw(shift(0,0)*((0,0)--(-2.5/3,0)), arrow = Arrow(6));
draw(shift(G-.1,0)*((0,0)--(-2.5/3*uL/v,0)), arrow = Arrow(6));
label("$v$",(-3/8,0),N);
label("$u_L$",(G-.5,0),N);

picture clock(real t){
picture lc;
draw(lc, scale(.25)*unitcircle);
draw(lc, scale(.25)*rotate(- t)*((0,0)--(0,1)));
return scale(.6)*lc;
}

add(shift(L,.5)*scale(1.5)*xscale(1/gamma)*clock(0));
add(shift(A,.5)*scale(1.5)*xscale(1/gamma)*clock(v^2*T));
add(shift(c3,.5)*scale(1.5)*xscale(1/gamma)*clock(v*(v+u)*T));

draw(shift(0,1)*((L,0)--(A,0)), brown+dotted+1bp, Arrows(2mm));
label("$\frac{vt}{\gamma}$",(L/2,1),brown,UnFill);
draw(shift(0,1)*((A,0)--(c3,0)), brown+dotted+1bp, Arrows(2mm));
label("$\frac{ut}{\gamma}$",((A+c3)/2,1),brown, UnFill);

draw((G,0)--(c3,0), brown+dotted+1bp, Arrows(2mm));
label("$x$",((G+c3)/2,0),S,brown);