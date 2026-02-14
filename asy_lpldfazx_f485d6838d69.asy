unitsize(2cm);

draw(shift(0,.5)*scale(.5)*unitcircle);
draw(shift(3,.5)*scale(.5)*unitcircle);
fill((-1,.6)--(4,.6)--(4,2)--(-1,2)--cycle,gray);
draw(shift(1,3)*scale(.3)*unitcircle);
draw((1,2.7)--(1,2));
draw((1, 2.5)--(2,2.7));
draw((1,2.55)--(2,2.75));
draw((2,2.725)--(5,2.725),brown+linewidth(2pt));
draw((5,2.725)--(5,1.5));
fill((4.5,1.75)--(5,1.75)--(5,1.25)--(4.5,1.25)--cycle,red);
fill((5,1.75)--(5.5,1.75)--(5.5,1.25)--(5,1.25)--cycle,blue);