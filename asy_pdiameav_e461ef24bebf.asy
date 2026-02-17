draw(xscale(.2)*unitcircle);
draw(shift(3,0)*xscale(.2)*unitcircle);

draw((0,-1)--(3,-1));
draw((0,1)--(3,1));

draw("$\vec{v}$",(3.2,0)--(4,0),arrow = Arrow(6),blue);
draw("$\vec{E}$",(1.5,1.1)--(2.5,1.1), arrow = Arrow(6), red);

draw("$\vec{B}$",shift(.4,0)*xscale(.4)*arc((1.7,0),1.2,75,285),arrow = Arrow(6),darkgreen);