//TeXeR source: https://artofproblemsolving.com/texer/eeuwrrxi

  unitsize(2cm);

  draw(scale(1.5)*unitcircle);
  label("Sun", (0,0));

  draw(shift(5,0)*scale(.7)*unitcircle);
  label("Earth",(5,0));

  //draw(arc((0,0),5,10,30), arrow = Arrow(6));

  draw(shift(5,0)*scale(1.2)*unitcircle,dashed);

  draw(arc((5,0),.8,-30,30), arrow = Arrow(6));

  draw(arc((5,0),1.3,-80,-30), arrow = Arrow(6));

  filldraw(shift(5,-1.2)*scale(.2)*unitcircle,white);
  label("Moon",(5,-1.4),S);

path person(){
 return (-.1,0)--(0,.5)--(.1,0)--(0,.5)--(0,.75)--(-.35,.75)--(.35,.75)--(0,.75)--(0,.8)--shift(0,.9)*scale(.1)*rotate(-90)*unitcircle;
    }

draw(shift(5,-1.1)*scale(.3)*person());

fill((5,-1)--(5,-1.4)--arc((5,-1.2),.2,-90,90)--cycle);