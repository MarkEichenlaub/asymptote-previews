unitsize(6cm);
import graph;

path axes = (0,1)--(0,0)--(1,0);

real e = 2.712;

real plotb(real x){
return 10*x/(1 + (5x)^2)^1.5;
}

draw(axes,linewidth(2pt));
label(rotate(90)*"force",(0,.5),W);
label("$y$",(.5,0),S);
draw(graph(plotb,0,1));