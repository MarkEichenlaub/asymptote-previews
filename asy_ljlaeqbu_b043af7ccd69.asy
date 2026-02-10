import graph;

draw(shift(-.864,1.58)*arc((0,0),1.9057,0,360), red);
//draw(shift(0,1)*scale(1)*unitcircle, red);
//draw(shift(0,.25)*scale(.25)*unitcircle, red);
//draw(shift(0,.75)*scale(.75)*unitcircle, red);

real y(real x){return x^2;}

draw(graph(y,-2,2));

dot((.6,.36),red);