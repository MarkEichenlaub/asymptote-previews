import graph;

real sine(real x){
return sin(x);
}

path wave = graph(sine,-pi,3*pi);
real size = 1/pi;
draw(rotate(90)*scale(size)*wave, green);
path wave = graph(sine,-2*pi,2*pi);
draw(shift(0,1)*rotate(90)*scale(size)*wave, blue);

dot((0,0));
dot((0,1));
draw((0,0)--(0,1),dotted);
label("$d$",(0,.5),W);

draw((0,1)--(0,2),dashed,arrow = Arrow(6));
draw((0,0)--(0,-1),dashed,arrow = Arrow(6));

label("no radiation",(0,1.5),E);
label("no radiation",(0,-.5),E);