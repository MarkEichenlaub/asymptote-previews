fill((0,0)--(.3,0)--(.3,.95)--(0,.95)--cycle,lightgray);

draw((0,1)--(0,0)--(.3,0)--(.3,1));
draw(shift(0,.45)*((0,.5)--(.3,.5)));

path box = scale(.2)*((0,0)--(0,1)--(1,1)--(1,0)--cycle);

fill(shift(.4,.75)*scale(1/sqrt(2))*box);

fill(shift(.4,.5)*scale(1/sqrt(2))*box);

draw(((.33,.5)--(.6,.5)),linewidth(2pt));
draw(((.33,.75)--(.6,.75)),linewidth(2pt));
//draw((.6,0)--(.6,1),linewidth(2pt));