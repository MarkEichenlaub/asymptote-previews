fill((0,0)--(.3,0)--(.3,.5)--(0,.5)--cycle,lightgray);

draw((0,1)--(0,0)--(.3,0)--(.3,1));
draw((0,.5)--(.3,.5));
fill((.05,.5)--(.25,.5)--(.25,.7)--(.05,.7)--cycle);

draw((.36,.5)--(.65,.5),linewidth(2pt));
//draw((.6,0)--(.6,1),linewidth(2pt));

label("piston",(.15,0),S);
label("shelf",(.5,.5),S);