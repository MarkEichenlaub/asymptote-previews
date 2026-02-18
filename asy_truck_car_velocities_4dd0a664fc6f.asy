unitsize(3cm);
draw(shift(-1,0)*box((0,0),(2,1)));

draw(shift(.6,-2.5)*scale(.75)*box((0,0),(1,2)));

label("truck",shift(-1,0)*(1,.5));
label("car",(1,-1.8));

draw(shift(-1,0)*shift((2.05,.5))*((0,0)--(.5,0)), arrow = Arrow(6), red);
draw(shift((1,-2.5+1.6))*((0,0)--(0,.5*20/16)), arrow = Arrow(6),red);

label("$16 \;\mathrm{m/s}$",shift(-1,0)*(2.2,.5),NE,red);
label("$20 \;\mathrm{m/s}$",(1,-.7),E,red);

pair c = (2.5,0);
draw(shift(c)*((0,0)--(.5,0)), arrow = Arrow(6));
draw(shift(c)*((0,0)--(0,.5)), arrow = Arrow(6));
label("$E$",(.5,0)+c,E);
label("$N$",(0,.5)+c,N);