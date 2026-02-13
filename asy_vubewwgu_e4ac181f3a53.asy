size(8cm);

draw(box((0,0),(3,1)), linewidth(2pt));
draw((1.5,0)--(1.5,.2), linewidth(2pt));
draw((1.5,.8)--(1.5,1), linewidth(2pt));
draw((1.5,.2)--(1.5,.8), linewidth(.5pt));
label("A",(.75,0),S);
label("B",(2.25,0),S);

path person = (-.1,0)--(0,.5)--(.1,0)--(0,.5)--(0,.75)--(-.35,.75)--(.35,.75)--(0,.75)--(0,.8)--shift(0,.9)*scale(.1)*rotate(-90)*unitcircle; 

draw(shift(.75)*scale(.6)*person);
draw(shift(2.25)*scale(.6)*person);

label("Can see into B", (.75,.8));
label("Cannot see into A",(2.25,.8));