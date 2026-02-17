path lump = ((0,0)..(.5,-.1)..(1,0)..(1.2,.3)..(1,.5)..(.3,.8)..cycle);

draw(lump);

draw(shift(-2,0)*reflect((0,0),(0,1))*lump);

//draw((.4,.4)--(-.6,.4), arrow = Arrow(6));
//label("$v$",(-.4,.4),N);

draw((-2.4,.4)--(-0.4,.4), arrow = Arrow(6));
label("$2v$",(-.6,.4),N);

draw((-4,-.15)--(2,-.15));
label("Situation 2", (-1,-.5));