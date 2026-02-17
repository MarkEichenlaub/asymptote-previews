draw((-4.2,0)--(4.2,0)--(4.2,2)--(-4.2,2)--cycle);
draw(shift(-3.5,1)*scale(.5)*unitcircle);
draw((-3.5,1)--(-3.3,1));
draw((-3.5,1)--(-3.5,1.4));

draw(shift(3.5,1)*scale(.5)*unitcircle);
draw((3.5,1)--(3.7,1));
draw((3.5,1)--(3.5,1.4));

draw((0,0)--(0,.75));
draw(shift(0,1)*scale(.25)*unitcircle);

dot((1,1));
dot((-1,1));
draw((1,1)--(2.5,1), arrow = Arrow(6));
label("$c$",(1.75,1),N);
draw((-1,1)--(-2.5,1), arrow = Arrow(6));
label("$c$",(-1.75,1),N);

draw((0,2.5)--(1,2.5), arrow = Arrow(6));
label("$v$",(.5,2.5),N);

draw((-4.2,-.2)--(4.2,-.2),dotted);
label("$L$",(0,-.2),S);

path person(){ return (-.1,0)--(0,.5)--(.1,0)--(0,.5)--(0,.75)--(-.35,.75)--(.35,.75)--(0,.75)--(0,.8)--shift(0,.9)*scale(.1)*rotate(-90)*unitcircle;
  }

  draw(shift(0,-2.5)*person());