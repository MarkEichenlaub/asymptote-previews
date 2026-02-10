import graph;

real range(real theta){
return sin(2 *theta);}

draw(graph(range,0,pi/2));

draw((0,0)--(pi/2,0));
draw((0,0)--(0,1));
label("$r$",(0,.5),W);
label("$\theta$",(pi/4,0),S);