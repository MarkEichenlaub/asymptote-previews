import graph;

real force(real x){
return 10*(x-.1)*(x+.3)*(x+.5)*(x-.8);
}

real tang(real x){
return -1.68*x + .168;
}

real tang2(real x){
return -1.56*x -.78;
}

draw(graph(force,-.6,.82),red);

draw((-1,0)--(1,0));
draw((0,-1)--(0,1));

label("$F$",(0,1),W);
label("$x$",(1,0),S);

//draw((-1,-1)--(1,1),linewidth(.5pt)+dashed);

draw(graph(tang,.1-.3,.1+.3),dashed);

draw(graph(tang2,-.5-.3,-.5+.3),dashed);