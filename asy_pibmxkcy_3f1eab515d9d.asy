unitsize(3cm);
real theta = 30;
real h = Tan(theta);

draw((0,0)--(1,0)--(1,h)--cycle);
label("opposite",(1,h/2),E);
label("adjacent",(.5,0),S);
label("hypotenuse",(.5,h/2),NW);

draw(arc((0,0),.3,0,theta));
label("$\theta$",dir(theta/2)*.35);

label("$\sin\theta = \frac{\mathrm{opposite}}{\mathrm{hypotenuse}}$",(0,-.4),E);
label("$\cos\theta = \frac{\mathrm{adjacent}}{\mathrm{hypotenuse}}$",(0,-.8),E);