unitsize(2cm);

  draw(scale(1.5)*unitcircle);
  draw(shift(5,0)*scale(.7)*unitcircle);
  draw(shift(5,0)*scale(1.2)*unitcircle,dashed);

  draw(arc((5,0),1.3,5,50), arrow = Arrow(6));

  filldraw(shift(6.2,0)*scale(.2)*unitcircle,white);

path person(){
 return (-.1,0)--(0,.5)--(.1,0)--(0,.5)--(0,.75)--(-.35,.75)--(.35,.75)--(0,.75)--(0,.8)--shift(0,.9)*scale(.1)*rotate(-90)*unitcircle;
    }

draw(shift(6.1,0)*scale(.3)*rotate(90)*person());

fill((6.2,.2)--(6.2,-.2)--arc((6.2,0),.2,-90,90)--cycle);

//draw(arc((6.2,0),.3,120,210),arrow = Arrow(6));