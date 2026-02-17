unitsize(4cm);
dot((-1,0));
label("source galaxy",(-1,0),S);

dot((0,0));
label("lens galaxy",(0,0),S);

dot((2,0),blue);
label("Earth",(2,0),S);

draw((-1,0)--(0,.1)--(2,0),dotted);

draw((0,0)--(0,.1));
label("$b$",(0,0),NE);

draw((-1,0)--(2,0));

draw(arc((-1,0),(-.5,0),(0,.1), direction = CCW) );
label("$\theta_1$",(-.5,.05),N);

draw(arc((2,0),(1,0),(0,.1),direction = CW) );
label("$\theta_2$",(1,.05),N);

label("$x_1$",(-.4,0),S);
label("$x_2$",(1.25,0),S);