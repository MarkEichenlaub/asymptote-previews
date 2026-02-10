draw(unitcircle);
real theta = 70;
dot(dir(theta),red+5);
dot((0,0),black+5);
draw((0,0)--(dir(theta).x,0),dotted);
draw((dir(theta).x,0)--dir(theta),dotted);
label("$x$",(dir(theta).x/2,0),S);
label("$y$",(dir(theta).x,dir(theta).y/2),E);