dot((0,0));

draw((0,0)--(0,-1.5),arrow = Arrow(6),red);

draw("$\mu mg \cos\theta$",(0,0)--(1,2), arrow = Arrow(6),red);
label("$mg\sin\theta$",(0,-.75),E,red);

draw("$\vec{v}$",(0,0)--(-1,-2),arrow = Arrow(6),blue);

draw("$\phi$",arc((0,0),.8,270,270- atan(.5)*180/pi));