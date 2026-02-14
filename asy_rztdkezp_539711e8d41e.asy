dot((.1,.1));
draw((.1,.1)--(.6,.6), arrow = Arrow(6));
draw((-1,0)--(.5,0),dotted);

draw(arc((0,0),.25,0,45));
label("$\theta$",(.22,.07),NE);

dot((.05,-.1));
draw((.05,-.1)--(.25,-.5),arrow=Arrow(6));

draw(arc((0,0),.2,0,-atan(2)*180/pi));
label("$\phi$",(.15,-.11),E);

label("$\mathrm{photon}$",(.1,.1),W);
label("electron",(.05,-.1),W);