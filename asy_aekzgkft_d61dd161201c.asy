unitsize(1cm);
dot((-4,0));
draw((0,-1)..(-.1,0)..(0,1));
draw((0,-1)..(.1,0)..(0,1));

label("$o$",(-2,0),S);


draw((-4,0)--(0,0),dashed);

draw((-4,0)--(0,1),dashed);

draw((0,0)--(0,1),dotted);
label("$h$",(0,.5),E);