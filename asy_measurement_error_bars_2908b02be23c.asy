size(8cm);

real a = 1.63;
real b = 1.65;

real sigma_a = 0.10;
real sigma_b = 0.08;

import graph;

xaxis( axis = Bottom, L = "$T\;(\mathrm{s})$", xmin = 1, xmax = 2, Ticks(endlabel = true, Step = .1, step = 0.05));

real ya = .1;
draw((a-sigma_a,ya)--(a+sigma_a, ya), blue+linewidth(2pt));
label("$5^\circ$",(a+sigma_a, ya),E,blue);

real yb = 0.05;
draw((b-sigma_b,yb)--(b+sigma_b, yb), red+linewidth(2pt));
label("$10^\circ$",(b+sigma_b, yb),E,red);