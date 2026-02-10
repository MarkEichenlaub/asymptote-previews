unitsize(3cm);
real w = 1;
real h = 2;

draw((-.5,0)--(1.5,0), linewidth(2pt));

filldraw(shift(0,.01)*box((0,0),(w,h)), lightgray);

real push_height = .9*h;
real f = 0.25;

draw(shift(-f,push_height)*((0,0)--(f,0)), arrow = Arrow(6), red+linewidth(2pt));
label("$\vec{F}_P$",(-f/2,push_height),N,red);

label("pushing lightly",(.5,-.2),S);

real dx = 2.5;

real w = 1;
real h = 2;

draw((-.5+dx,0)--(1.5+dx,0), linewidth(2pt));

filldraw(shift(dx,.01)*box((0,0),(w,h)), lightgray);

real push_height = .9*h;
real f = 0.75;

draw(shift(-f+dx,push_height)*((0,0)--(f,0)), arrow = Arrow(6), red+linewidth(2pt));
label("$\vec{F}_P$",(dx+-f/2,push_height),N,red);

label("pushing harder",(.5+dx,-.2),S);

dot((w,0),6+red);
dot((w+dx,0),6+red);