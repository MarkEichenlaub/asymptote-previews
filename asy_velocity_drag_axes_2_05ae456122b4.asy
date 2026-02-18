unitsize(4cm);
import graph;
draw((0,1)--(0,0)--(1,0));
real y(real x){return x;}
draw(graph(y,0,1), blue);
label(rotate(90)*"$F_{\rm drag}$",(0,1),W);
label("$v$",(1,0),S);