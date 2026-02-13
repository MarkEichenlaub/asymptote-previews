draw((0,0)--(3,0),linewidth(2pt));
draw((.5,0)--(2.5,0)--(2.5,1)--cycle);
draw(arc((.5,0),.5,0,atan(.5)*180/pi));
label("$\theta$",(1.1,.17));
label("$m$",(2,.4));
draw((0,.5)--(1,.5)--(1,2),linewidth(2pt));
draw((1,.25)--(1,1.5)--(2,1.5)--(2,.75)--cycle);
label("$M$",(1.5,1));

draw((1.5,.5)--(2,-.5),arrow = Arrow(6),red);
label("$N$",(2,-.5),SW,red);