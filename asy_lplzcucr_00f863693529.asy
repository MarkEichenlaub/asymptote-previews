//TeXeR source: https://artofproblemsolving.com/texer/lplzcucr

import three; 
size(150);
real radius=1, theta=37, phi=60;

currentprojection=perspective(4,1,2);

real r=1.5;
draw(Label("$x$",1), O--r*X, Arrow3(HookHead3));
draw(Label("$y$",1), O--r*Y, Arrow3(HookHead3));
draw(Label("$z$",1), O--r*Z, Arrow3(HookHead3));
label("$\rm O$", (0,0,0), W);

triple pP=radius*dir(theta,phi); // Point P
draw(O--radius*dir(90,phi)^^O--pP, dashed);
dot("$P$",pP,NE);
label("$r$", pP/2, SE);

real rad_theta = theta*pi/180;
real rad_phi = phi*pi/180;
//draw(pP--(pP + .4*(cos(rad_theta)*cos(rad_phi),cos(rad_theta)*sin(rad_phi),-sin(rad_theta))),red+linewidth(2pt), Arrow3);

// Arcs
draw("$\theta$", reverse(arc(O,0.5*pP,0.5*Z)), N+0.3E);
draw("$\phi$", arc(O,0.5*X,0.5*(pP.x,pP.y,0)), S);

path3 p3=O--arc(O,radius,0,theta,90,phi)--cycle;
//draw(surface(p3), blue+opacity(0.5));
draw(p3, dashed);