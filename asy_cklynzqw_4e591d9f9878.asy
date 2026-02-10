unitsize(0.35cm);

path flashlight = (-.8,0)--(.8,0)--(.8,3.5)--(1.5,4.5)--(-1.5,4.5)--(-.8,3.5)--cycle;

draw(flashlight);

draw((-6,15)--(-.5,15), linewidth(2pt));
draw((.5,15)--(6,15), linewidth(2pt));

draw((-6,25)--(6,25), linewidth(2pt));

label("flashlight",(0,0),S);
label("hole",(0,15),SE);
label("box",(4,25),S);