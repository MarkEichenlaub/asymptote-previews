size(5cm);
defaultpen(fontsize(10pt));

real pi = radians(180);
real theta = radians(25);

pair right = (6, 0), top = (0, 6*tan(theta));
draw((0, 0)--right--top--cycle);

pair blockbase = 0.2*right + 0.8*top,
    blockcenter = blockbase + sqrt(2)/2 * expi(-theta + pi/4);
draw(shift(blockbase)* rotate(degrees(-theta))* unitsquare);

real f_length = 1.6;
draw(blockcenter--(blockcenter + (0, -f_length)), rgb(0.0, 0.6, 1.0), EndArrow(TeXHead));
label("$mg$", blockcenter + (0, -f_length), dir(0), rgb(0, 0.6, 1));

draw(blockcenter--(blockcenter + expi(pi - theta)), rgb(1.0, 0.4, 0.1), EndArrow(TeXHead));
label("$F_f$", blockcenter + expi(pi - theta), dir(90), rgb(1.0, 0.4, 0.1));

draw(blockcenter--(blockcenter + f_length*cos(theta)*expi(pi/2 - theta)), rgb(0.0, 0.4, 0.0), EndArrow(TeXHead));
label("$F_N$", blockcenter + f_length*cos(theta)*expi(pi/2 - theta), dir(90), rgb(0.0, 0.4, 0.0));

dot(blockcenter);