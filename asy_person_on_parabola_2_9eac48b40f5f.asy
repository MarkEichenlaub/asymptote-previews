import graph;

real y(real x){return 1-x^2;}
draw(graph(y,-1,1),dotted);
pair center = (-.5,y(-.5));
filldraw(box(center-(.1,.1),center+(.1,.1)),lightgray);

draw(shift(center)*scale(.2)*((0,0)--(1,1)), arrow = Arrow(6));

path person(){
return (-.1,0)--(0,.5)--(.1,0)--(0,.5)--(0,.75)--(-.35,.75)--(.35,.75)--(0,.75)--(0,.8)--shift(0,.9)*scale(.1)*rotate(-90)*unitcircle;
}

draw(shift(-.5,0)*scale(.2)*person());
draw((-.55,0)--(-.45,0));
draw((-.45,.1)--(-.45+.2/sqrt(2),.1), arrow = Arrow(6));
draw(shift(-.54,-.02)*scale(.02)*unitcircle);
draw(shift(-.46,-.02)*scale(.02)*unitcircle);