unitsize(2.5cm);

label("$A$",(1,.8),E);
label("$B$",(2.8,.8),W);

fill((2.8,.5)--(3,.5)--(3,.8)--(2.8,.8)--cycle,cyan);
fill((0,.8)--(1,.8)--(1,.85)--(0,.85)--cycle,cyan);

draw((3.1,.8)--(3.1,.5), arrow = Arrow(6));
draw((-.1,.8)--(-.1,.9), arrow = Arrow(6));

fill((0,.8)--(1,.8)--(1,.2)--(2.8,.2)--(2.8,.5)--(3,.5)--(3,0)--(0,0)--cycle, lightblue);

draw((0,1)--(0,0)--(3,0)--(3,1));
draw((1,1)--(1,.2)--(2.8,.2)--(2.8,1));

draw((0,.85)--(1,.85),linewidth(2pt));
draw((2.8,.5)--(3,.5), linewidth(2pt));

draw(shift(.5,1.06)*scale(.2)*unitcircle);
draw(shift(2.9,.57)*scale(0.06)*unitcircle);