unitsize(5cm);

//perspective variable
real b = 0.3;

//table
pen brwn = RGB(166, 123, 7);
fill(yscale(b)*((-1.4,-1.2)--(-.9,1.2)--(1.4,1.2)--(.9,-1.2)--cycle), brwn+linewidth(2pt));

//plate
filldraw(yscale(b)*unitcircle, linewidth(2pt)+lightgray);

//disk

pair s = (0,0.1);
real r = 0.4;
real t = 0.1;

filldraw(shift(s)*yscale(b)*scale(r)*unitcircle,white);
filldraw(shift(s)*((-r,0)--shift(0,-t)*yscale(b)*arc((0,0),r,-180,0)--(r,0)--yscale(b)*arc((0,0),r,0,-180)--cycle), white );

//labels
label("plate",(-.9,0),E);
label("disk",(0,.05));
label("table",yscale(b)*(-1.2,-1),E);

//rotation
real theta = 30;
draw(yscale(b)*arc((0,0),r+.05,-90-theta,-90+theta), arrow = Arrow(6));
label("$\omega_0$",yscale(b)*(0,-r-.05),S);

//radius
draw(shift(s)*((0,0)--(r,0)), dotted);
label("$r$",(.5*r,0)+s,N);