unitsize(3cm);
real w = 1;
real h = 2;

draw((-.5,0)--(1.5,0), linewidth(2pt));

filldraw(shift(0,.01)*box((0,0),(w,h)), lightgray);

real push_height = .9*h;
real f = 0.5;

draw(shift(-f,push_height)*((0,push_height*f)--(f,0)), arrow = Arrow(6), red+linewidth(2pt));
label("$\vec{F}_P$",(-f/2,push_height+f),NE,red);

draw((w,0)--(-w*.7,1.7*push_height), dotted);

label("$h$",(1,h/2),E);
label("$w$",(.5,0),S);

dot((w,0),6+red);