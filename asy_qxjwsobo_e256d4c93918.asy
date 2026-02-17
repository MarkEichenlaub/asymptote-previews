//TeXeR source: https://artofproblemsolving.com/texer/qxjwsobo

fill((0,.5)--(.3,.5)--(.3,-.5)--(0,-.5)--cycle,lightgray);
label("$\epsilon$",(.15,0));

draw((0,0)--(0,1),linewidth(2pt));
draw((.3,0)--(.3,1),linewidth(2pt));

label("$Q$",(0,1),NW);
label("$-Q$",(.3,1),NE);