unitsize(0.1cm);

real L = 52;
real R = 35;

real r = 5;

//ball
filldraw(shift((0,r))*scale(r)*unitcircle, yellow);
label("ball",(0,r*2),N);

//mirrors
draw((-L,0)--(-L,50),linewidth(2pt));
label("left mirror",(-L,25),E);

draw((R,0)--(R,50),linewidth(2pt));
label("right mirror",(R,25),W);

//ground
fill(box((-60,0),(80,-10)),lightgray);

//reflection
filldraw(reflect((R,0),(R,1))*shift((0,r))*scale(r)*unitcircle, yellow);
label("reflection",(2*R,2*r),N);

//distances
draw((0,-3)--(R,-3),brown+dotted+1bp,Arrows(2mm));
label("$35\;\mathrm{cm}$",(R/2,-3), UnFill); 

draw((R,-3)--(2*R,-3),brown+dotted+1bp,Arrows(2mm));
label("$35\;\mathrm{cm}$",(3*R/2,-3), UnFill);