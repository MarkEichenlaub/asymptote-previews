//TeXeR source: https://artofproblemsolving.com/texer/nxvqrwdf

unitsize(1cm);

draw((-2,1)--(2,1), linewidth(2pt));
draw((-.3,0)--(.3,0)--(0,1)--cycle);
dot((0,1));
draw((-2,2)--(-2,1.1), arrow = Arrow(6), deepred);
label("force",(-2,2),N,deepred);
draw((2,1.1)--(2,2), arrow = Arrow(6), blue);
label("load",(2,2),N,blue);
label("Class 1 Lever",(0,0),S);

draw((-2,-4)--(2,-4),linewidth(2pt));
draw((-2.3,-5)--(-1.7,-5)--(-2,-4)--cycle);
dot((-2,-4));
draw((2,-3.9)--(2,-3), arrow = Arrow(6), deepred);
label("force",(2,-3),N,deepred);
draw((0,-3.9)--(0,-2),arrow = Arrow(6),N,blue);
label("load",(0,-2),N,blue);
label("Class 2 Lever",(0,-5),S);

draw((-2,-9)--(2,-9),linewidth(2pt));
draw((-2.3,-10)--(-1.7,-10)--(-2,-9)--cycle);
dot((-2,-9));
draw((0,-8.9)--(0,-7), arrow = Arrow(6), deepred);
label("force",(0,-7),N,deepred);
draw((2,-8.9)--(2,-8), arrow = Arrow(6), blue);
label("load",(2,-8),N,blue);
label("Class 3 Lever",(0,-10),S);