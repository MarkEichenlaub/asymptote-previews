real theta = atan(5/8)*180/pi;

pair c = dir(theta);

draw((0,0)--c, arrow = Arrow(6));
draw((0,0)--(c.x,0), dotted);
draw((c.x,0)--c, dotted);
label("$v_{fx}$",(c.x/2,0),S);
label("$v_{fy}$",(c.x,c.y/2),E);
label("$\vec{v_f}$", c/2,NW);
draw(arc((0,0),.3,0,theta));
label("$\theta$",dir(theta/2)*.36);