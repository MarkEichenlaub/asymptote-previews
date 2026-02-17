unitsize(1cm);
dot((-4,0));
dot((5,0));
draw((0,-1)..(-.1,0)..(0,1));
draw((0,-1)..(.1,0)..(0,1));

label("object",(-4,0),S);
label("image",(5,0),S);

draw((-4,0)--(0,0),dashed);
draw((0,0)--(5,0),dashed);

draw((-4,0)--(0,.3),dashed);
draw((0,.3)--(5,0),dashed);


draw((-4,0)--(0,-.5),dashed);
draw((0,-.5)--(5,0),dashed);


draw((-4,0)--(0,1),dashed);
draw((0,1)--(5,0),dashed);