draw((0,0){1,1}..{1,1.3}(1,1));

draw((0,0)--(-.3,-.3),arrow=Arrow(6),red);
draw((1,1)--(1,1)+(1,1.3)*.3,arrow = Arrow(6),red);
draw((.5,.49)--(.5,.3),arrow = Arrow(6),red);

label("$g\mathrm{d}m$",(.5,.3),S);
label("$T$",(-.3,-.3),SW);
label("$T+\mathrm{d}T$",(1,1)+(1,1.3)*.3,NW);