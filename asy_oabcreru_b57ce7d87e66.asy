real r1 = .9;
real r2 = 1;
real d = r2 - r1;

real y = .8;

fill((0,1+y)--(0,0)--arc((1,0),r2,180,360)--(2,1-y)--(2-d,1-y)--(2-d,0)--arc((1,0),r1,0,-180)--(d,1+y)--cycle, cyan);

fill((2-d,1)--(2,1)--(2,1-y)--(2-d,1-y)--cycle, red);
fill((0,1+y)--(0,1)--(d,1)--(d,1+y)--cycle, red);

draw((2-d,1-y/2)--(d,1+y/2), arrow = Arrow(6), red);

draw((0,2)--(0,0)--arc((1,0),r2,180,360)--(2,2));
draw((d,2)--(d,0)--arc((1,0),r1,180,360)--(2-d,2));

draw((-.2,1)--(2.2,1), dotted);

label("$y$",(0,1+y/2),W);