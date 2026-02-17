draw((0,0)--(2,0)--(0,.5));
draw(arc((2,0),.8,180,180-atan(.25)*180/pi));
label("$\theta$",(1.15,.1));

real theta = 270 - atan(.25)*180/pi;

draw(shift(1,.25)*shift(-.5*(Cos(theta),Sin(theta)))*scale(.5)*unitcircle);
real phi = 220;
fill( shift(1,.25)*shift(-.5*(Cos(theta),Sin(theta)))*shift(.4*(Cos(phi),Sin(phi)))*scale(.1)*rotate(phi)*((0,0)--(0,1)--(1,1)--(1,0)--cycle));