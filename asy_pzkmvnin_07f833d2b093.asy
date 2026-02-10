//TeXeR source: https://artofproblemsolving.com/texer/pzkmvnin

unitsize(2cm);
draw(unitcircle);
draw(arc((0,0),1,87,93),blue+linewidth(2pt));
draw((0,0)--(cos(pi/2-3*pi/180),sin(pi/2-3*pi/180)),dotted+blue);
draw((0,0)--(cos(pi/2+3*pi/180),sin(pi/2+3*pi/180)),dotted+blue);
label("$\theta$",(0,.5),E,blue);