unitsize(6cm);
import graph;

path axes = (0,1)--(0,0)--(1,0);

real e = 2.712;

real plotb(real x){
return 10*x/(1 + (5x)^2)^1.5;
}

draw(axes,linewidth(2pt));
label(rotate(90)*"force",(0,.5),W);
label("$y$",(.5,-.15),S);
draw(graph(plotb,0,1));

draw((.2,0)--(.2,.05));
label("$R$",(.2,0),S);

draw((.4,0)--(.4,.05));
label("$2R$",(.4,0),S);

draw((.6,0)--(.6,.05));
label("$3R$",(.6,0),S);

draw((.8,0)--(.8,.05));
label("$4R$",(.8,0),S);

draw((1,0)--(1,.05));
label("$5R$",(1,0),S);