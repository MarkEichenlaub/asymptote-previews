size(8cm);

real a = 1.01;
real b = 1.07;

real sigma_a = 0.2;
real sigma_b = 0.2;

import graph;

xaxis( axis = Bottom, xmin = .5, xmax = 1.5, Ticks(endlabel = true, Step = .1, step = 0.05));

real ya = .1;
draw((a-sigma_a,ya)--(a+sigma_a, ya), blue+linewidth(2pt));
label("$a$",(a+sigma_a, ya),E,blue);

real yb = 0.05;
draw((b-sigma_b,yb)--(b+sigma_b, yb), red+linewidth(2pt));
label("$b$",(b+sigma_b, yb),E,red);