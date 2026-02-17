//TeXeR source: https://artofproblemsolving.com/texer/esurmlwh
size(8cm);

//ink
fill(box((.1,.1),(.9,.2)),cyan);

//paper
draw(box((0,0),(1,.1)));

//red light
draw((0,.4)--(.2,.2),   arrow = Arrow(6) , red+linewidth(2pt));

//green light
draw((.05,.4)--(.35,.1)--(.65,.4),   arrow = Arrow(6) , green+linewidth(2pt));

//blue light
draw((.1,.4)--(.4,.1)--(.7,.4),   arrow = Arrow(6) , blue+linewidth(2pt));