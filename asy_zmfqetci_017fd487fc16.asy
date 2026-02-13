real theta = 120*pi/180;
draw((0,0)--(1,0),arrow  = Arrow(6));
draw((1,0)--(1.5,0),dotted);
draw((1,0)--((1,0) + (cos(theta),sin(theta))),arrow = Arrow(6));
draw(arc((1,0),.2,0,theta*180/pi),arrow = Arrow(6));
label("$\theta$",(1.23,.1));
draw(unitcircle,dotted);