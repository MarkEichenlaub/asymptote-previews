dot((-1,0));
dot((1,0));
draw((-1.2,0)--(1.2,0),dashed);

draw((-1,0)--(-.5,1),arrow = Arrow(6));
draw((1,0)--(.5,1),arrow = Arrow(6));

label("v",(-.75,.5),NW);
label("v",(.75,.5),NE);

label("$\theta$",shift(.1,.1)*(-1,0),ENE);
label("$\theta$",shift(-.1,.1)*(1,0),WNW);

label("m",(-1,0),S);
label("m",(1,0),S);