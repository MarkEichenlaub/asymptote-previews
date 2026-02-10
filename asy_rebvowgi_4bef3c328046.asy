//TeXeR source: https://artofproblemsolving.com/texer/rebvowgi

size(3cm);

real r = 0.3;
draw(unitcircle);
draw(scale(0.3)*unitcircle);
draw(shift(0.3*dir(-90))*((0, 0)--(1.5, 0)), EndArrow(TeXHead));

draw((-2,-1)--(2,-1));