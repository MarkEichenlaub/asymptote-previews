unitsize(3cm);
real w = 1;
real h = 2;

draw((-.5,0)--(1.5,0), linewidth(2pt));

filldraw(shift(0,.01)*box((0,0),(w,h)), lightgray);

real push_height = .9*h;
real f = 0.5;

draw((w/2,.02)--(w/2-f,.02), arrow = Arrow(6), red+linewidth(2pt));
label("$\vec{F}_f$",(w/2-f/2,.02),N,red);

draw((w,0.02)--(w/2,.02), arrow = Arrow(6), deepgreen+linewidth(2pt));
label("$\vec{r}_f$",(3w/4,.02),N,deepgreen);

dot((w,0),6+red);