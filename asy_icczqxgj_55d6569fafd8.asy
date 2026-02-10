path person = (-.1,0)--(0,.5)--(.1,0)--(0,.5)--(0,.75)--(-.35,.75)--(.35,.75)--(0,.75)--(0,.8)--shift(0,.9)*scale(.1)*rotate(-90)*unitcircle; 
draw(person);

filldraw(shift((2.2,.2))*rotate(45)*box((0,0),(.6,.6)), gray);
filldraw(box((2,0),(2.4,.4)), gray);

draw(shift((1.8,.7))*((0,0)--2*dir(135)),   arrow = Arrow(6) , lightolive+2pt);

pair d = (.1,.1);

draw(shift(d)*shift((1.8,.7))*((0,0)--2*dir(135)),   arrow = Arrow(6) , lightolive+2pt);
draw(shift(2*d)*shift((1.8,.7))*((0,0)--2*dir(135)),   arrow = Arrow(6) , lightolive+2pt);
draw(shift(3*d)*shift((1.8,.7))*((0,0)--2*dir(135)),   arrow = Arrow(6) , lightolive+2pt);