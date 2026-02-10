fill((0,0)--(.3,0)--(.3,.75)--(0,.75)--cycle,lightgray);

draw((0,1)--(0,0)--(.3,0)--(.3,1));
draw(shift(0,.25)*((0,.5)--(.3,.5)));

path box = scale(.2)*((0,0)--(0,1)--(1,1)--(1,0)--cycle);

fill(shift(.4,.75)*scale(1/sqrt(2))*box);

fill(shift(.1,.75)*scale(1/sqrt(2))*box);

draw(((.36,.5)--(.65,.5)),linewidth(2pt));
draw(((.36,.75)--(.65,.75)),linewidth(2pt));
//draw((.6,0)--(.6,1),linewidth(2pt));

draw((.48,.80)--(.15,.8),arrow = Arrow(6), red);