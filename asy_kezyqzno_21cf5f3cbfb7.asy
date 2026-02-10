unitsize(3cm);
real w = 1;
real h = 2;

draw((-.5,0)--(1.5,0), linewidth(2pt));

filldraw(shift(0,.01)*box((0,0),(w,h)), lightgray);

real push_height = .9*h;
real f = 0.3;

draw(shift(-f,push_height)*((0,0)--(f,0)), arrow = Arrow(6), red+linewidth(2pt));
label("$\vec{F}_P$",(-f/2,push_height),N,red);

draw((.65*w,0)--(.65*w,.5), arrow = Arrow(6), red+linewidth(2pt));
label("$\vec{N}$",(.65*w,.25),E,red);

dot((w,0),6+red);

draw((w,0)--(.65*w,0), red+dotted+linewidth(1pt));
label("$r_{N,\perp}$",(w/2+.65*w/2,0),S,red);

label("smaller $\vec{F}_P$",(.5,-.2),S);

real dx = 2.5;

draw((-.5+dx,0)--(1.5+dx,0), linewidth(2pt));

filldraw(shift(dx,.01)*box((0,0),(w,h)), lightgray);

real push_height = .9*h;
real f = 0.6;

draw(shift(-f+dx,push_height)*((0,0)--(f,0)), arrow = Arrow(6), red+linewidth(2pt));
label("$\vec{F}_P$",(-f/2+dx,push_height),N,red);

draw((.8*w+dx,0)--(.8*w+dx,.5), arrow = Arrow(6), red+linewidth(2pt));
label("$\vec{N}$",(.8*w+dx,.25),E,red);

dot((w+dx,0),6+red);

draw(shift(dx,0)*((w,0)--(.8*w,0)), red+dotted+linewidth(1pt));
label("$r_{N,\perp}$",shift(dx,0)*(w/2+.8*w/2,0),S,red);

label("larger $\vec{F}_P$",(.5+dx,-.2),S);