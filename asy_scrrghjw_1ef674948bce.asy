import graph;

real force(real x){
return 10*(x-.1)*(x+.3)*(x+.5)*(x-.8);
}

real tang(real x){
return .88*x + .264;
}

draw(graph(force,-.6,.82),red);

draw((-1,0)--(1,0));
draw((0,-1)--(0,1));

label("$F$",(0,1),W);
label("$x$",(1,0),N);

//draw((-1,-1)--(1,1),linewidth(.5pt)+dashed);

dot((.1,0));
label("$C$",(.1,0),NE);
dot((-.3,0));
label("$B$",(-.3,0),SE);
dot((-.5,0));
label("$A$",(-.5,0),SW);
dot((.8,0));
label("$D$",(.8,0),SE);

//draw(graph(tang,-1,.5),dashed);