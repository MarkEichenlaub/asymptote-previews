unitsize(2cm);

draw(scale(1.5)*unitcircle);


draw(shift(5,0)*scale(.7)*unitcircle);



draw(shift(5,0)*scale(1.2)*unitcircle,dashed);


filldraw(shift(5,1.2)*scale(.2)*unitcircle,white);


label("A",(5,-1.1));
label("B",(5,0)+1.1*dir(-45));
label("C",(5,0)+1.1*dir(0));
label("D",(5,0)+1.1*dir(45));
label("E",(5,0)+1.1*dir(90));
label("F",(5,0)+1.1*dir(135));
label("G",(5,0)+1.1*dir(180));
label("H",(5,0)+1.1*dir(225));

path person(){
 return (-.1,0)--(0,.5)--(.1,0)--(0,.5)--(0,.75)--(-.35,.75)--(.35,.75)--(0,.75)--(0,.8)--shift(0,.9)*scale(.1)*rotate(-90)*unitcircle;
    }

draw(shift(5,.4)*rotate(180)*scale(.2)*person());

fill((5,1)--(5,1.4)--arc((5,1.2),.2,-90,90)--cycle);