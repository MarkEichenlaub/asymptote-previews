size(8cm);

draw(unitcircle);
fill(arc((0,0),1,-90,90)--(6,1)--(6,-1)--cycle);
draw(arc((0,0),5,-40,40),dotted);
filldraw(shift(rotate(-30)*(5,0))*scale(.2)*unitcircle,white);
label("Earth",(0,0));
label("Moon",rotate(-30)*(5,0),SE);
label("shadow",(6,0),E);