path lump = ((0,0)..(.5,-.1)..(1,0)..(1.2,.3)..(1,.5)..(.3,.8)..cycle);

draw(lump);

draw(shift(-2,0)*reflect((0,0),(0,1))*lump);

draw((.4,.4)--(-.6,.4), arrow = Arrow(6));
label("$v$",(-.4,.4),N);

draw((-2.4,.4)--(-1.4,.4), arrow = Arrow(6));
label("$v$",(-1.6,.4),N);

draw((-4,-.15)--(2,-.15));
label("Situation 1 (adding velocities)", (-1,-.5));
draw((.4,.3)--(1.4,.3), arrow = Arrow(6), deepred);
draw((-2.4,.3)--(-1.4,.3), arrow = Arrow(6), deepred);
label("$v$",(-1.4,.3), E, deepred);
label("$v$",(1.4,.3),E, deepred);

draw((2,-.05)--(3,-.05), arrow = Arrow(6), deepred);
label("$v$",(3,-.05),E,deepred);

draw(shift(0,-3)*lump);
draw(shift(-2,-3)*reflect((0,0),(0,1))*lump);
draw(shift(0,-3)*((-2.4,.4)--(-.4,.4)),arrow = Arrow(6));
label("$2v$",(-.6,.4-3),N);
draw((-4,-3.15)--(2,-3.15));
label("Situation 1 (new reference frame)", (-1,-3.5));
draw((2,-.05-3)--(3,-.05-3), arrow = Arrow(6));
label("$v$", (3,-.05-3),E);