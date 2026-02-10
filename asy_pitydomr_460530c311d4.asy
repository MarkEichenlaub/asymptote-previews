unitsize(3cm);
real w = 1;
real h = 2;

real push_height = .9*h;
real f = 0.5;

draw(((0,0)--(f,0)), arrow = Arrow(6), red+linewidth(2pt));
label("$\vec{F}_P$",(f/2,0),S,red);

draw((0,0)--(-w,push_height), arrow = Arrow(6), deepgreen+linewidth(2pt));
label("$\vec{r}_P$",(-w/2,push_height/2),NE,deepgreen);

draw(arc((0,0),.3,atan(-push_height/w)*180/pi+180,0), arrow = Arrow(6));
label("$\theta$",dir(atan(-push_height/w)*90/pi+90)*.36);