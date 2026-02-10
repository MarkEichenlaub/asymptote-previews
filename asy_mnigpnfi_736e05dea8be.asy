//TeXeR source: https://artofproblemsolving.com/texer/mnigpnfi

real theta = 30;
pair pos = dir(theta);

draw((0,0)--(1,0), dashed);
draw((0,0)--pos, dashed);

draw(arc((0,0),1,0,28), arrow = Arrow(6));
label("$d = \theta r$",dir(theta/2)*1.15);
draw(arc((0,0),.3,0,30), dotted);
label("$\theta$",dir(theta/2)*.35);

label("$r$",(.5,0),S);
label("$r$",pos/2,NW);

dot(pos, blue+6);
dot((1,0), blue+6);