unitsize(6cm);

path person(){ 
 return (-.1,0)--(0,.5)--(.1,0)--(0,.5)--(0,.75)--(-.35,.75)--(.35,.75)--(0,.75)--(0,.8)--shift(0,.9)*scale(.1)*rotate(-90)*unitcircle; 
  }

//draw(person());
draw((-.25,-.25)--(-.25,0)--(.25,0)--(.25,.25)--(.5,.25), linewidth(2pt));

//draw((0,.6)--(0,.1), arrow = Arrow(6), red+linewidth(2pt));
//label("$mg$",(0,.1),W,red);

draw((.1,0)--(.1,.4), arrow = Arrow(6), red+linewidth(2pt));
label("$mg$",(.1,.4),NE, red);

dot((.1,0),8+black);

draw(shift((.1,0))*((0,0)--(-.4,-.2)), arrow = Arrow(6), blue);
label("$\vec{d}$",(.1,0)+(-.2,-.1),NW,blue);

//draw(shift(-.05,.3)*((0,0)--(0,-.2)--(-.4,-.2)), dotted+blue);
//label("$d_\parallel$",(-.05,.3)+(0,-.1),E,blue);
//label("$d_\perp$",(-.05,.3)+(-.2,-.2),S,blue);