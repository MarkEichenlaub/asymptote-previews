unitsize(1cm);

fill(box((-1,0),(1,3.5)), cyan);
path bottle = (-.1,0)--(-1,0)--(-1,4)--(-.3,4)--(-.3,4.5);
draw(bottle, linewidth(2pt));
draw(reflect((0,0),(0,1))*bottle, linewidth(2pt));

fill(box((-.1,.1),(.1,-2)), cyan);

draw((0,-.1)--(0,-1), arrow = Arrow(6), blue+linewidth(2pt));
label("$v_{\rm opening}$",(.1,-.55),E,blue);

draw((1.2,0)--(1.2,3.5), dotted);
label("$h$",(1.2,3.5/2),E);

draw((0,3.4)--(0,0), dotted);