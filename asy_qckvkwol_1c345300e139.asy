unitsize(6cm);

real g = .2;
real b = .5;
real w = 1;

draw(box((-g,0),(g,g)));

draw(box((-b,-.6),(b,-.1)));

draw(box((-w,-1.2),(w,-.7)));

label("Grogg's fists",(0,g/2));
label("books",(0,-.35));
label("Winnie",(0,-.95));

draw((0,-.01)--(0,-.3), arrow = Arrow(6), red);