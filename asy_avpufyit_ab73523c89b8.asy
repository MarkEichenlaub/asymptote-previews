unitsize(1.5cm);

picture clock(real t){
picture lc;
draw(lc, scale(.25)*unitcircle);
draw(lc, scale(.25)*rotate(- t)*((0,0)--(0,1)));
return scale(.6)*lc;
}

for(int i = 0; i< 7; ++i){
add(shift(i,0)*clock(0));
}

real gamma = 1/.7;

picture a;
draw(a,shift(0,-1)*box((0,0),(1,.5)));
label(a,xscale(1/gamma)*"A",(.5,-1+.25));
draw(a,shift(1.05,-1+.25)*xscale(1/.7)*((0,0)--(.5,0)), arrow = Arrow(6));
label(a,"$v$",(1.25,-.75),N);

add(shift(-.5/gamma,0)*xscale(1/gamma)*a);