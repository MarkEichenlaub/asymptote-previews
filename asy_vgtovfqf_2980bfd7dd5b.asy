unitsize(3cm);

real theta = 60;

draw(unitcircle);
draw(arc((0,0),1,theta,360-theta), red+linewidth(1.5pt));
draw(arc((0,0),1,-theta,theta), blue+linewidth(1.5pt));

draw((0,0)--dir(theta), dotted);
draw((0,0)--dir(-theta), dotted);
draw((0,0)--(1,0), dashed);

draw(arc((0,0),.4,0,theta));
draw(arc((0,0),.45,0,-theta));
label("$\theta_c$",dir(theta/2)*.4,E);
label("$\theta_c$",dir(-theta/2)*.45,E);