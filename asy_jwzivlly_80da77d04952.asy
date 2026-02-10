import graph;

draw(shift(4,3.5)*arc((0,0),5*sqrt(5)/2,170,250), red);
//draw(shift(0,1)*scale(1)*unitcircle, red);
//draw(shift(0,.25)*scale(.25)*unitcircle, red);
//draw(shift(0,.75)*scale(.75)*unitcircle, red);

real y(real x){return x^2;}

draw(graph(y,-2,2));

dot((-1,1),red);