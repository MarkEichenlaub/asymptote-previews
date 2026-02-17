//TeXeR source: https://artofproblemsolving.com/texer/dwtctimw

unitsize(1.5cm);

draw(unitcircle);

draw(shift(5,0)*scale(.3)*unitcircle);
fill((5,-.3)--(5,.3)--arc((5,0),.3,90,-90)--cycle);
label("Sun",(0,-1),S);
label("Earth",(5,-.4),S);

draw(arc((5,0),.4,50,130), arrow = Arrow(6), red);

draw(arc((0,0),5,6,20), arrow = Arrow(6), blue);

path person(){
 return (-.1,0)--(0,.5)--(.1,0)--(0,.5)--(0,.75)--(-.35,.75)--(.35,.75)--(0,.75)--(0,.8)--shift(0,.9)*scale(.1)*rotate(-90)*unitcircle;
    }

draw(shift(4.9,-.2)*scale(.3)*rotate(150)*person());