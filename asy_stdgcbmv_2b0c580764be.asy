draw((-1,0)--(1,0));
draw((0,-1)--(0,1));

real theta1 = 20;
real theta2 = 60;
draw((0,0)--(Cos(theta1),Sin(theta1)), arrow = Arrow(6));
draw((0,0)--(Cos(theta2),Sin(theta2)), arrow = Arrow(6));

real thetabar = 40;
real l = 2*Cos(10);
pair sum = l*(Cos(thetabar),Sin(thetabar));

draw((Cos(theta1),Sin(theta1))--sum, arrow = Arrow(6));
draw((Cos(theta2),Sin(theta2))--sum, arrow = Arrow(6));

draw((0,0)--sum, arrow = Arrow(6));

draw("$\omega_1 t$",arc((0,0),.4,0,theta1));
draw("$\omega_2 t$",arc((0,0),.75,0,theta2));