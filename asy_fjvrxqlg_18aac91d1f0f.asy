draw((0,-1)--(0,1));
draw((0,0)--(1,0));
draw((0,1)--(1,1)--(1,-1)--(0,-1));
label("$v$",(0,.9),W);
label("$t$",(.6,-1),S);
draw((0,.8)--(1,-.8),red);
label("$0$",(0,0),W);

draw((.5,-1)--(.5,1),dotted);

draw((0,.4)--(.5,.4),dashed);
label("$v_{\rm up\, avg}$",(0,.4),W);
draw((1,-.4)--(.5,-.4),dashed);
label("$v_{\rm down\, avg}$",(1,-.4),E);