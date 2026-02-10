//TeXeR source: https://artofproblemsolving.com/texer/lspsffdv

size(8cm);

path person(){
 return (-.1,0)--(0,.5)--(.1,0)--(0,.5)--(0,.75)--(-.35,.75)--(.35,.75)--(0,.75)--(0,.8)--shift(0,.9)*scale(.1)*rotate(-90)*unitcircle;
    }

fill((-4.5,0)--(-3,0)--arc((0,1),3,-160.5,-19.5)--(5,0)--(5,-2.5)--(-4.5,-2.5)--cycle, lightblue);

draw((-3,1)--(3,1));
draw(arc((0,1),3,0,-180));
draw((0,1)--(0,3));
fill((0,2)--(-1,2)--(0,3)--cycle);
draw("$v$",(-3,1.2)--(-4,1.2), arrow = Arrow(6));

draw((-2,.7)--(-2,-1)--(2,-1)--(2,.7)--cycle, dotted);

draw(shift(0,-.3)*person());

filldraw(shift(4,0)*yscale(.3)*scale(.6)*unitcircle, yellow);

draw(shift(4,0)*scale(.5)*person());

draw(arc((.1,-2.8),2.5,60,120),dashed);

draw((1.3,-.9)--(1.5,-.4));
draw((-1.3,-.9)--(-1.1,-.4));
label("1",(1.5,-.4),N);
label("2",(-1.1,-.4),N);

draw(shift(-.2,.2)*((0,0)--(-.3,0)), arrow = Arrow(6));