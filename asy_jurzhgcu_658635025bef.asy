real theta = 50;

draw(unitcircle);

draw((0,0)--(Sin(theta/2),Cos(theta/2)),dotted);
draw((0,0)--(-Sin(theta/2),Cos(theta/2)),dotted);

draw("$\theta$",arc((0,0),.4,90-theta/2,90+theta/2));

//draw("$T$",shift((Sin(theta/2),Cos(theta/2))/2)*((0,0)--(Cos(theta/2),-Sin(theta/2))*.3), arrow = Arrow(6),red);

//draw("$T$",shift((-Sin(theta/2),Cos(theta/2))/2)*((0,0)--(-Cos(theta/2),-Sin(theta/2))*.3), arrow = Arrow(6),red);