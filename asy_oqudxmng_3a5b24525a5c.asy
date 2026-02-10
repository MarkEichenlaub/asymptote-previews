unitsize(3cm);

path person = (-.1,0)--(0,.5)--(.1,0)--(0,.5)--(0,.75)--(-.12,.75)--(-.12,1.1)--(-.12,.75)--(.35,.75)--(0,.75)--(0,.8)--shift(0,.9)*scale(.1)*rotate(-90)*unitcircle;

draw(person, linewidth(2pt));

draw(shift((-.12,1.1))*((0,0)--(-sqrt(3)/2, -.5)) );
dot((-.12,1.1)+(-sqrt(3)/2,-.5), 6+black);

draw(arc((-.12,1.1),.4,-150,-180), dotted );
draw((-1.5,1.1)--(0,1.1), dotted);
label("$30^\circ$",(-.62,1));

draw((-.12-sqrt(3)/2,0)--(-.12-sqrt(3)/2,1.1-.5),brown+dotted+1bp,Arrows(2mm));
label("H",(-.12-sqrt(3)/2,(1.1-.5)/2), UnFill);

label("$L$",(-.12,1.1) + .5*(-sqrt(3)/2,-.5), SE);