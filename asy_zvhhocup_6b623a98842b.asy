fill((-2.5,1)--(2.5,1)--(2.5,-1.5)--(-2.5,-1.5)--cycle,lightgray);
fill((-2.5,1)--(2.5,1)--(2.5,3){-1,0}..(0,3.3)..{-1,0}(-2.5,3)--cycle, lightblue);
fill(unitcircle,gray);
real theta = 20;
draw((0,0)--(Cos(theta),Sin(theta)), dotted+white);
label("$r$",.5*(Cos(theta),Sin(theta)),NNW);;