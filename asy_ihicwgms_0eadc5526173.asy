//TeXeR source: https://artofproblemsolving.com/texer/ihicwgms
size(8cm);

//ink
fill(box((.1,.1),(.9,.2)),cyan);

//paper
filldraw(box((0,0),(1,.1)));

//red light
draw((0,.4)--(.2,.2),   arrow = Arrow(6) , red+linewidth(2pt));

//green light
draw((.05,.4)--(.25,.2)--(.45,.4),   arrow = Arrow(6) , green+linewidth(2pt));

//blue light
draw((.1,.4)--(.3,.2)--(.5,.4),   arrow = Arrow(6) , blue+linewidth(2pt));