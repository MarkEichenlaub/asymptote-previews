import graph;

real force(real x){
return 5*(x-.1)*(x+.5);
}

real tang(real x){
return .88*x + .264;
}

draw(graph(force,-.6,.2),red);

draw((-1,0)--(1,0));
draw((0,-1)--(0,1));

label("$E$",(0,1),W);
label("$x$",(1,0),S);

//draw((-1,-1)--(1,1),linewidth(.5pt)+dashed);

//draw(graph(tang,-1,.5),dashed);