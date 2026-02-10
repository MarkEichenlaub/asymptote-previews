size(6cm);

path person = (-.1,0)--(0,.5)--(.1,0)--(0,.5)--(0,.75)--(-.35,.75)--(.35,.75)--(0,.75)--(0,.8)--shift(0,.9)*scale(.1)*rotate(-90)*unitcircle; 

draw(shift(.5,0)*scale(.6)*person);

draw((1,0)--(2,1)--(3,0));
draw((2.5,.5)--(3.2,1.2)--(4.4,0));

label("near", (2,0),S);
label("far",(3.6,0),S);