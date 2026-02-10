draw((0,0)--(1,0), linewidth(2pt));

real r = .1;
real fulcrum = .3;
draw(shift(fulcrum,r)*xscale(.3)*scale(r)*unitcircle);

draw(shift(0,.1)*((0,0)--(.3,0)),brown+dotted+1bp,Bars(2mm));
label("$\ell_1$",(.15,.1), UnFill);

draw(shift(0,-.1)*((.3,0)--(.9,0)),brown+dotted+1bp,Bars(2mm));
label("$\ell_2$",(.3/2+.9/2,-.1), UnFill);

draw((0,0)--(0,-.2));
fill(shift(0,-.3)*scale(.1)*unitcircle);
label("bananas",(0,-.4),S);

draw((.9,0)--(.9,-.2));
fill(shift(.9,-.3)*scale(.1)*unitcircle);
label("65 coins",(.9,-.4),S);