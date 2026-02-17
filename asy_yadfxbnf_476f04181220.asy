for(int i = 0; i<100; ++i){
dot((unitrand()*7 + -.5, unitrand()*5), 2+black);
}

filldraw(box((0,0),(1,3)), lightgray);
label("A",(.5,0),S);
filldraw(box((5,0),(6,3)), lightgray);
label("B",(5.5,0),S);

path person(){
 return (-.1,0)--(0,.5)--(.1,0)--(0,.5)--(0,.75)--(-.35,.75)--(.35,.75)--(0,.75)--(0,.8)--shift(0,.9)*scale(.1)*rotate(-90)*unitcircle;
    }

draw(shift(.7,0)*person(),blue);
draw((1,.7)--(2,.7), arrow = Arrow(6),blue);

draw((-.5,0)--(6.5,0));