//TeXeR source: https://artofproblemsolving.com/texer/qfowvtvn

size(7cm);

draw((0, 0)--(10, 0));

real eps = 0.08, eps2 = 0.2;
real slopelength = 6,
    theta = radians(25);
pair blockpos = (0.5, eps),
    slopepos = (3.5, eps);

draw(shift(blockpos)*unitsquare);
draw(shift(blockpos)*((eps2, 1/2)--(-1 + eps2, 1/2)), EndArrow(TeXHead));
draw(shift(slopepos)*((eps2+slopelength,1/2)--(eps2+slopelength + 1,1/2)), EndArrow(TeXHead));

pair right = (slopelength, 0), top = (slopelength, slopelength*tan(theta));
draw(shift(slopepos)*((0, 0)--right--top--cycle));

label("$m$", blockpos + (1/2, 1), dir(90));
label("$v$", blockpos + (-1- eps2, 1/2), dir(90));
label("$v_2$", slopepos +  (slopelength + 1.4 + eps2, 1/2));
label("$M$", shift(slopepos)*(0.25*top+0.55*right), dir(90));