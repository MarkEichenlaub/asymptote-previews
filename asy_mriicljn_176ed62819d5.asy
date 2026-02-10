//TeXeR source: https://artofproblemsolving.com/texer/mriicljn

unitsize(1cm);

draw(shift(8.1,-1)*yscale(.2)*scale(.3)*unitcircle);
draw(shift(8.1,-1.1)*yscale(.2)*scale(.3)*unitcircle);
draw(shift(8.1,-1.2)*yscale(.2)*scale(.3)*unitcircle);
draw(shift(8.1,-1.3)*yscale(.2)*scale(.3)*unitcircle);
draw(shift(8.1,-1.2)*rotate(-45)*yscale(.3)*scale(.3)*unitcircle);

draw((-3,0)--(1.8,0),linewidth(2pt));
//draw((2.2,0)--(3,0),linewidth(2pt));

fill((-2,0)--(-1,0)--(-1,1)--(-2,1)--cycle,gray);
//draw((-1,.5)--(0,.5),arrow = Arrow(6));
//label("$T$",(-.5,.5),N);

fill((1.5,-1.4)--(2.5,-1.4)--(2.5,-2.4)--(1.5,-2.4)--cycle,gray);
//draw((2,-2)--(2,-3.5),arrow = Arrow(6));
label("10 pounds",(2,-3),E);
//draw((2.1,-1.4)--(2.1,-.41),arrow = Arrow(6));
//label("$T$",(2.1,-.5),E);

draw(shift(1.9,.1)*scale(.1)*unitcircle);

draw((-1,.2)--(1.9,.2));
draw((2,.1)--(2,-1.4));

draw((3,0)--(7.8,0),linewidth(2pt));
//draw((2.2,0)--(3,0),linewidth(2pt));

fill((4,0)--(5,0)--(5,1)--(4,1)--cycle,gray);
//draw((-1,.5)--(0,.5),arrow = Arrow(6));
//label("$T$",(-.5,.5),N);

//fill((7.5,-1.4)--(8.5,-1.4)--(8.5,-2.4)--(7.5,-2.4)--cycle,gray);
//draw((2,-2)--(2,-3.5),arrow = Arrow(6));

label("10 pounds",(8.1,-2),E);
draw((8.1,-1.4)--(8.1,-2.41),arrow = Arrow(6));
//label("$T$",(2.1,-.5),E);

draw(shift(7.9,.1)*scale(.1)*unitcircle);

draw((5,.2)--(7.9,.2));
draw((8,.1)--(8,-1.4));