draw((0,0)--(2,0)--(0,.5));
draw(arc((2,0),.8,180,180-atan(.25)*180/pi));
label("$\theta$",(1.15,.1));

real theta = 270 - atan(.25)*180/pi;

pair cylinder_center = shift(-.5*(Cos(theta),Sin(theta)))*(1,.25);

draw(shift(cylinder_center)*scale(.5)*unitcircle);
real phi = 220;

pair block = shift(1,.25)*shift(-.5*(Cos(theta),Sin(theta)))*shift(.4*(Cos(phi),Sin(phi)))*(0,0);

fill(shift(block)*scale(.1)*rotate(phi)*((0,0)--(0,1)--(1,1)--(1,0)--cycle));

draw((cylinder_center.x,.25)--cylinder_center, dotted);
draw(cylinder_center--block, dotted);

label("$\phi$", cylinder_center + (-.1,-.2));