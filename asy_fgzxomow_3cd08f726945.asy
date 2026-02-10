import graph;

real force(real theta){
return -sin(theta);
}

draw(graph(force,-.9,.9),red);

draw((-1,0)--(1,0));
draw((0,-1)--(0,1));

label("$F$",(0,1),W);
label("$\theta$",(1,0),S);

draw((.5,-.05)--(.5,.05));
label("$.5$",(.5,-.05),S);
draw((1,-.05)--(1,.05));
draw((-.5,-.05)--(-.5,.05));
draw((-1,-.05)--(-1,.05));