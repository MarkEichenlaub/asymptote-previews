real thickness = .05;

real[] t = times(unitcircle,-thickness);
path left_circle = subpath(unitcircle, t[0],t[1]);
draw(left_circle);

draw(rotate(180)*left_circle);

fill((-thickness,1)--(thickness,1)--(thickness,-1)--(-thickness,-1)--cycle);