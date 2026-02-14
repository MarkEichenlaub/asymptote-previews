unitsize(10cm);
draw((0,1)--(0,0)--(.5,0)--(.5,1));
draw((0,.8)--(.1,.8));
draw((.4,.8)--(.5,.8));
draw((.1,.85)--(.1,.55)--(.4,.55)--(.4,.85)--cycle);
filldraw(shift(.25,.55)*scale(.05)*unitcircle,lightgray);