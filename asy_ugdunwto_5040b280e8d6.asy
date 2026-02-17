fill((-1.5,1)--(1.5,1)--(1.5,-1.5)--(-1.5,-1.5)--cycle,lightgray);
fill((-1.5,1)--(1.5,1)--(1.5,3)--(-1.5,3)--cycle, lightblue);
fill(unitcircle,gray);
real theta = 20;
draw((0,0)--(Cos(theta),Sin(theta)), dotted+white);
label("$r$",.5*(Cos(theta),Sin(theta)),NNW);;