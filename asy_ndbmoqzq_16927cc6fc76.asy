//TeXeR source: https://artofproblemsolving.com/texer/ndbmoqzq

unitsize(4cm);

path person(){ 
 return (-.1,0)--(0,.5)--(.1,0)--(0,.5)--(0,.75)--(-.35,.75)--(.35,.75)--(0,.75)--(0,.8)--shift(0,.9)*scale(.1)*rotate(-90)*unitcircle; 
  }

draw((0,0)--(1,0), linewidth(2pt));

draw(shift(.21,-.84)*rotate(-45)*person());

path cup = ((0,0){1,0}..{1,0}(.1,-.05)..{1,0}(.2,0)--cycle);

filldraw(shift(.4,0)*cup,lightgray);
draw((.5,-.06)--(.5,-.07), linewidth(2pt));