//TeXeR source: https://artofproblemsolving.com/texer/sbfbnbye

fill((.5,-.3)--(.5,.7)--(1.2,.7)--(1.2,-.3)--cycle,gray(.96));

dot((0,0));
label("A",(0,0),S);

dot((1,.4));
label("B",(1,.4),S);
//draw((0,0)--(1,.4), dotted);

draw((.5,-.3)--(.5,.7));

label("vacuum",(0,.25));
label("glass",(1,-.3),S);