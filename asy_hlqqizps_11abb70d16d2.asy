//TeXeR source: https://artofproblemsolving.com/texer/hlqqizps

unitsize(4cm);

path person(){ 
 return (-.1,0)--(0,.5)--(.1,0)--(0,.5)--(0,.75)--(-.35,.75)--(.35,.75)--(0,.75)--(0,.8)--shift(0,.9)*scale(.1)*rotate(-90)*unitcircle; 
  }

draw(person());

draw((-1,.6)--(-.2,.6), arrow = Arrow(6), red+linewidth(2pt));
draw((1,.6)--(.2,.6), arrow = Arrow(6), red+linewidth(2pt));