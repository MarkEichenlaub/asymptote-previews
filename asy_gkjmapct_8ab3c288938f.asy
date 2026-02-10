fill((0,0)--(.3,0)--(.3,.5)--(0,.5)--cycle,lightgray);
draw((0,1)--(0,0)--(.3,0)--(.3,1));
draw(shift(0,0)*((0,.5)--(.3,.5)));

path box = scale(.2)*((0,0)--(0,1)--(1,1)--(1,0)--cycle);

fill(shift(0,.5)*scale(1/sqrt(2))*box);

fill(shift(.15,.5)*scale(1/sqrt(2))*box);

draw(((.36,.5)--(.65,.5)),linewidth(2pt));
draw(((.36,.75)--(.65,.75)),linewidth(2pt));
//draw((.6,0)--(.6,1),linewidth(2pt));