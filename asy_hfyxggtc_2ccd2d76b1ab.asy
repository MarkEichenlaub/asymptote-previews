unitsize(4cm);
dot((-1,0));
label("source galaxy",(-1,0),S);

dot((0,0));
label("lens galaxy",(0,0),S);

dot((2,0),blue);
label("Earth",(2,0),S);

draw((-1,0)--(0,.1)--(2,0),dotted);