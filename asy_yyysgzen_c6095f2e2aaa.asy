real angle = 20;
real angle_th = angle*pi/180;

fill(rotate(-angle)*((-.2,0)--(-.2,1)--(0,1)--(0,0)--cycle));

real x_coord = sin(angle_th);

draw((-1,0)--(x_coord,0),linewidth(2pt));
draw((x_coord,0)--(x_coord,1.2),linewidth(2pt));

draw((-cos(angle_th),sin(angle_th))--(0,0),dotted);
draw(arc((0,0),.4,180-angle,180));
label("$\theta$",(0,0)+.46*(-cos(angle_th/2),sin(angle_th/2)));

label("$h$",(-.05,.6));
label("$t$",(.26,1.02));

draw((0,0)--(sin(20*pi/180),cos(20*pi/180)),red);
draw((sin(20*pi/180),cos(20*pi/180)) -- ((sin(20*pi/180),cos(20*pi/180)) + .2*(-cos(20*pi/180),sin(20*pi/180))),red);
draw((0,0)--((sin(20*pi/180),cos(20*pi/180)) + .2*(-cos(20*pi/180),sin(20*pi/180))),red);