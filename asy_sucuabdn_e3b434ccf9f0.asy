unitsize(5cm);

real theta = 2;

filldraw(dir(90-theta)--arc((0,0),1,90-theta,-90+theta)--cycle, lightgray);
filldraw(dir(90+theta)--arc((0,0),1,90+theta,270-theta)--cycle, lightgray);

path person(){ 
 return (-.1,0)--(0,.5)--(.1,0)--(0,.5)--(0,.75)--(-.35,.75)--(.35,.75)--(0,.75)--(0,.8)--shift(0,.9)*scale(.1)*rotate(-90)*unitcircle; 
  }

real r = 0.6;
draw(shift(0,r)*scale(.07)*person());

draw(shift(.02,.0)*((0,0)--(0,r)), dotted);
label("$r$",(0,r/2),E*2);

draw((0,r)--(0,r/2), arrow = Arrow(6), red);
label("$\vec{F}_{g; \oplus \to p}$",(0,.75*r),2*W,red);