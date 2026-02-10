//TeXeR source: https://artofproblemsolving.com/texer/xviosqtv

unitsize(5cm);

path person(){ 
 return (-.1,0)--(0,.5)--(.1,0)--(0,.5)--(0,.75)--(-.35,.75)--(.35,.75)--(0,.75)--(0,.8)--shift(0,.9)*scale(.1)*rotate(-90)*unitcircle; 
  }

draw(shift(-.5,.1)*person());
label("Alex",(-.5,.1),S);
draw(shift(.5,.1)*person());
label("Lizzie",(.55,.1),S);

dot((-.43,1.04));
draw(shift(-.42,.95)*((0,0)--(-.05,.025)));

dot((.43,1.04));
draw(shift(.42,.95)*((0,0)--(.05,.025)));

draw(shift(0,.5)*scale(.2)*person());
label("Grogg",(0,.5),S);

draw((-.4,0)--(-.1,.5));
draw((.4,0)--(.1,.5));