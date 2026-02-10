size(8cm);

draw(unitcircle);
fill(arc((0,0),1,-90,90)--(12,1)--(12,-1)--cycle);
draw(arc((0,0),2,-60,60),dotted);
draw(arc((0,0),10,-45,45),dotted);
filldraw(shift(rotate(-40)*(2,0))*scale(.2)*unitcircle,white);
filldraw(shift(rotate(-40)*(10,0))*scale(.2)*unitcircle,white);