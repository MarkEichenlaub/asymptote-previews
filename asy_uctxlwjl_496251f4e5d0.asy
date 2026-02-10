//TeXeR source: https://artofproblemsolving.com/texer/uctxlwjl

unitsize(30cm);
//draw(unitcircle);
draw(arc((0,0),1,87,93),blue+linewidth(2pt));
draw((cos(pi/2-3*pi/180),sin(pi/2-3*pi/180))--((cos(pi/2-3*pi/180),sin(pi/2-3*pi/180)) + (1, -tan(3*pi/180))/10), arrow = Arrow(6), red);
draw((cos(pi/2+3*pi/180),sin(pi/2+3*pi/180))--((cos(pi/2+3*pi/180),sin(pi/2+3*pi/180)) + (-1, -tan(3*pi/180))/10), arrow = Arrow(6), red);
//label("$T$",(.1,1.006),red);
//label("$T$",(-.1,1.006),red);

draw(arc((0,1),.112,-3,0));

label("$\phi$",(.11,1.005));

//draw((cos(pi/2+3*pi/180),sin(pi/2+3*pi/180)), red);
//draw((0,0)--(cos(pi/2-3*pi/180),sin(pi/2-3*pi/180)),dotted+blue);
//draw((0,0)--(cos(pi/2+3*pi/180),sin(pi/2+3*pi/180)),dotted+blue);
//label("$\mathrm{d}\theta$",(0,.5),E,blue);
draw((-.15,1)--(.15,1),dotted);