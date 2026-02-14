unitsize(1cm);
dot((-4,0));
dot((5,0));
draw((0,-1)..(-.1,0)..(0,1));
draw((0,-1)..(.1,0)..(0,1));

label("$o$",(-2,0),S);
label("$i$",(2.5,0),S);

draw((-4,0)--(0,0),dashed);
draw((0,0)--(5,0),dashed);