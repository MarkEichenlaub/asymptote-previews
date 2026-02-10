unitsize(0.5cm);

real o = 10;
real i = 3;

filldraw(circle((0,o),1), yellow);

draw((-2,0)--(2,0));
dot((0,0));

draw((-4,-i)--(4,-i));

draw((-1,o)--(i/o,-i), dotted);
draw((1,o)--(-i/o,-i), dotted);

filldraw(circle((0,-i),i/o),yellow);

label("sheet with pinhole",(2,0),E);
label("sun",(1,o),E);
label("image",(0,-i-i/o),S);

draw((-1,0)--(-1,o),brown+dotted+1bp,Arrows(2mm));
label("$o$",(-1,o/2), UnFill);

draw((.5,0)--(.5,-i),brown+dotted+1bp,Arrows(2mm));
label("$i$",(.5,-i/2), UnFill);