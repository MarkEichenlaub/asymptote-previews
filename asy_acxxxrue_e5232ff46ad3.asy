unitsize(1.5cm);

picture clock(real t){
picture lc;
draw(lc, scale(.25)*unitcircle);
draw(lc, scale(.25)*rotate(- t)*((0,0)--(0,1)));
return scale(.6)*lc;
}

real gamma = 1/.7;

picture c;
for(int i = 0; i< 7; ++i){
add(c, shift(i,0)*clock(i*20));
draw(c, shift(i,.2)*xscale(gamma)*((0,0)--(-.5,0)), arrow = Arrow(6));
label(c, "$v$",(i-.25,.2),N);
}

picture a;
draw(a,shift(0,-1)*box((0,0),(1,.5)));
label(a,"A",(.5,-1+.25));
//draw(a,shift(1.05,-1+.25)*xscale(1/.7)*((0,0)--(.5,0)), arrow = Arrow(6));
//label(a,"$v$",(1.25,-.75),N);

add(a);
add(shift(.5,0)*xscale(1/gamma)*c);