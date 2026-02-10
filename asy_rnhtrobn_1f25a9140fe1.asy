unitsize(2cm);
path person(){ 
 return (-.1,0)--(0,.5)--(.1,0)--(0,.5)--(0,.75)--(-.35,.75)--(.35,.75)--(0,.75)--(0,.8)--shift(0,.9)*scale(.1)*rotate(-90)*unitcircle; 
  }

draw(unitcircle,linewidth(2pt));
draw(shift(.4,.4)*scale(.2)*person());