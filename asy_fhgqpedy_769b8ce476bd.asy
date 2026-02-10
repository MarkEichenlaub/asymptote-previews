import graph;

draw(shift(0,.5)*scale(.5)*unitcircle, red);
draw(shift(0,1)*scale(1)*unitcircle, red);
draw(shift(0,.25)*scale(.25)*unitcircle, red);
draw(shift(0,.75)*scale(.75)*unitcircle, red);

label("A",(0,2),N,red);
label("B",(0,1.5),N,red);
label("C",(0,1),N,red);
label("D",(0,.5),N,red);

real y(real x){return x^2;}

draw(graph(y,-1,1));