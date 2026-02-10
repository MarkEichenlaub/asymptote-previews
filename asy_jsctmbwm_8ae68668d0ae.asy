unitsize(2cm);
path person(){ 
 return (-.1,0)--(0,.5)--(.1,0)--(0,.5)--(0,.75)--(-.35,.75)--(.35,.75)--(0,.75)--(0,.8)--shift(0,.9)*scale(.1)*rotate(-90)*unitcircle; 
  }

draw(scale(.2)*person());
filldraw(shift(0,-1)*unitcircle,lightgray);

draw((0,0)--(0,-.7), arrow = Arrow(6),red);

draw(shift(3,0)*scale(.2)*person());
dot((3,-1), 8+black);
draw((3,0)--(3,-.7), arrow = Arrow(6), red);

draw((1.5,-2.2)--(1.5,.2), dotted);

label("gravitational force on the person is the same in these scenarios", (1.5,-2.2),S);