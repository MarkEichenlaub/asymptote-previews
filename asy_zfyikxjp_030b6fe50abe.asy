//TeXeR source: https://artofproblemsolving.com/texer/zfyikxjp

dot((-1,0));
dot((1,0));
label("$m$",(-1,0),S);
label("$m$",(1,0),S);
draw((-1.5,0)--(1.5,0),dashed);
draw((-1,0)--(-.3,1),arrow = Arrow(6));
label("$v$",(-.5,.8),W);
draw((1,0)--(.3,1),arrow = Arrow(6));
label("$v$",(.5,.8),E);
label("$\theta$",(-.9,0),NE);
label("$\theta$",(.9,0),NW);