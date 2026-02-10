label("$A$",(1,.8),E);
label("$B$",(3,.8),E);

fill((0,.8)--(1,.8)--(1,.2)--(2.8,.2)--(2.8,.8)--(3,.8)--(3,0)--(0,0)--cycle, lightblue);

draw((0,1)--(0,0)--(3,0)--(3,1));
draw((1,1)--(1,.2)--(2.8,.2)--(2.8,1));

draw((0,.8)--(1,.8),linewidth(2pt));
draw((2.8,.8)--(3,.8), linewidth(2pt));

draw(shift(.5,1.02)*scale(.2)*unitcircle);
draw(shift(2.9,.88)*scale(0.06)*unitcircle);