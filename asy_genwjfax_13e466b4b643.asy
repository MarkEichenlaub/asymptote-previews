unitsize(1.5cm);

picture clock(real t){
picture lc;
draw(lc, scale(.25)*unitcircle);
draw(lc, scale(.25)*rotate(- t)*((0,0)--(0,1)));
return scale(.6)*lc;
}

real gamma = 1/.7;
real v = sqrt(1 - 1/gamma^2);
real v2 = 2v/(1 + v^2);
real gamma2 = 1/sqrt(1 - v2^2);

picture c;
for(int i = 0; i< 7; ++i){
add(c, shift(i,0)*clock(120-i*20));
draw(c, shift(i,.2)*xscale(gamma)*((0,0)--(.5,0)), arrow = Arrow(6));
label(c, "$v$",(i+.25,.2),N);
}

picture a;
draw(a,shift(-.5,-1)*box((0,0),(1,.5)));
label(a,xscale(1/gamma2)*"A",(0,-1+.25));
draw(a,shift(1.05-.5,-1+.25)*xscale(gamma2)*xscale(v2/v)*((0,0)--(.5,0)), arrow = Arrow(6));
label(a,"$>v$",(1.2,-.75),N);

picture l;
draw(l,shift(0,-1)*box((0,0),(1,.5)));
label(l,"L",(.5,-1+.25));

add(shift(6/gamma - v2/v*3/gamma,0)*xscale(1/gamma2)*a);
add(xscale(1/gamma)*c);
add(shift(6/gamma-.5,0)*l);