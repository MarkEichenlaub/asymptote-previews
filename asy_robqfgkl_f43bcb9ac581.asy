//all the "draw" commands are at the bottom so you can comment them out if you don't want something

real theta = 30;
pair bot_right = (Cos(theta),0);
pair top = (0,Sin(theta));

path box = (0,0)--(1,0)--(1,1)--(0,1)--cycle;
pair box_bot_center = top*.8 + bot_right*.2;
pair box_bot_left = box_bot_center + (-Cos(theta),Sin(theta))*.1;

pair box_center = box_bot_center + (Sin(theta),Cos(theta))*.1;
pair grav_comp_corner = box_center + (Cos(theta),-Sin(theta))*.5*Sin(theta);
path axes = (0,1)--(0,0)--(1,0);
pair origin = (.6,.5);

//inclined plane
draw((0,0)--bot_right--top--cycle); 
//box
draw(shift(box_bot_left)*rotate(-theta)*scale(.2)*box);
//rotated axes
//draw(shift(origin)*rotate(-theta)*scale(.2)*axes,dotted);
//label("$x$",origin+rotate(-theta)*(.2,0),S);
//label("$y$",origin+rotate(-theta)*(0,.2),N);
//angle label
//draw("$\theta$", arc(bot_right,.2,180,180-theta), dir(180 - 22.5));

//gravity
//draw("$mg$",shift(box_center)*((0,0)--(0,-.5)),arrow = Arrow(6),blue);
//gravity components
//draw(box_center--grav_comp_corner--shift(box_center)*(0,-.5),blue+dashed);
//normal force
//draw(shift(box_bot_center)*rotate(-theta)*((0,0)--(0,.4)),arrow = Arrow(6),red);
//label("$N$",shift(box_bot_center)*rotate(-theta)*(0,.4),NW,red);

label("$\ell$",(top+bot_right)/2,SW);
label("$H$",top/2,W);