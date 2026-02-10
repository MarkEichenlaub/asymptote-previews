real theta = 30;
pair bot_right = (Cos(theta),0);
pair top = (0,Sin(theta));

draw((0,0)--bot_right--top--cycle);
path box = (0,0)--(1,0)--(1,1)--(0,1)--cycle;
pair box_bot_center = top*.8 + bot_right*.2;
pair box_bot_left = box_bot_center + (-Cos(theta),Sin(theta))*.1;
draw(shift(box_bot_left)*rotate(-theta)*scale(.2)*box);

draw("$\theta$", arc(bot_right,.2,180,180-theta), dir(180 - 22.5));

draw(shift(box_bot_center)*rotate(-theta)*((0,0)--(0,.4)),arrow = Arrow(6),red);
label("$N$",shift(box_bot_center)*rotate(-theta)*(0,.4),NW,red);
pair box_center = box_bot_center + (Sin(theta),Cos(theta))*.1;
draw("$mg$",shift(box_center)*((0,0)--(0,-.5)),arrow = Arrow(6),blue);

pair grav_comp_corner = box_center + (Cos(theta),-Sin(theta))*.5*Sin(theta);
//draw(box_center--grav_comp_corner--shift(box_center)*(0,-.5),blue+dashed);

path axes = (0,1)--(0,0)--(1,0);
pair origin = (.6,.5);
draw(shift(origin)*rotate(-theta)*scale(.2)*axes,dotted);

label("$x$",origin+rotate(-theta)*(.2,0),S);
label("$y$",origin+rotate(-theta)*(0,.2),N);