import graph;

pair curve(real t){

return (t*cos(t),t*sin(t));
}

dot((0,0));

draw(graph(curve,.7,pi));