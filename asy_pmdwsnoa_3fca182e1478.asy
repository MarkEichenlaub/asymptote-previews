size(6cm);
defaultpen(fontsize(10pt));

real pi = radians(180);
real eps = 0.08, eps2 = 0.2;
real slopelength = 6,
    theta = radians(25);

draw((3, 0)--(10, 0));

pair slopepos = (3.5, eps);
pair right = (slopelength, 0), top = (slopelength, slopelength*tan(theta));
draw(shift(slopepos)*((0, 0)--right--top--cycle));

pair blockpos = shift(slopepos)*(0.6*top);
draw(shift(blockpos)*rotate(degrees(theta))*unitsquare);

pair blockcenter = shift(blockpos)*rotate(degrees(theta))*(1/2, 1/2);
real blockheight = blockcenter.y;
draw(blockcenter--(10.5, blockheight), rgb(0.0, 0.6, 1.0) + dotted);
draw(Label("$h$", align=(0, 0), UnFill), shift(10.5, 0)*((0, 0)--(0, blockheight)), Bars);
dot(blockcenter);

label("$M$", shift(slopepos)*(0.25*top+0.55*right), dir(90));