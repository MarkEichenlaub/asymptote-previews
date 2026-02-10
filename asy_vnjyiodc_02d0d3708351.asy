unitsize(1cm);

path person(){
return (-.1,0)--(0,.5)--(.1,0)--(0,.5)--(0,.75)--(-.35,.75)--(.35,.75)--(0,.75)--(0,.8)--shift(0,.9)*scale(.1)*rotate(-90)*unitcircle;
}

draw(box((0,0),(6,2)));

draw(shift(.5,0)*person());
draw(shift(5.5,0)*person());
label("A",(.5,0),S);
label("L",(5.5,0),S);

draw((3,0)--(3,.6));
draw(shift(3,.8)*scale(.2)*unitcircle);

path star;
star=expi(0)--(scale((3-sqrt(5))/2)*expi(pi/5))--expi(2*pi/5)--
(scale((3-sqrt(5))/2)*expi(3*pi/5))--expi(4pi/5)--
(scale((3-sqrt(5))/2)*expi(5*pi/5))--expi(6*pi/5)--
(scale((3-sqrt(5))/2)*expi(7*pi/5))--expi(8*pi/5)--
(scale((3-sqrt(5))/2)*expi(9*pi/5))--cycle;
star = scale(.1)*rotate(15)*star;

filldraw(shift(2.5,.8)*scale(1.5)*star, yellow);
filldraw(shift(3.5,.8)*scale(1.5)*star, yellow);

draw(shift(2.2,.8)*((0,0)--(-.5,0)), arrow = Arrow(6));
draw(shift(3.8,.8)*((0,0)--(.5,0)), arrow = Arrow(6));

draw((0,2.15)--(6,2.15), brown+dotted+1bp, Arrows(2mm));
label("$\ell$",(3,2.15),UnFill);