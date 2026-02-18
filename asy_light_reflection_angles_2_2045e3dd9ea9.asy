unitsize(3cm);

real theta = 55;

//mirror
draw(rotate(theta)*((-1,0)--(1,0)), linewidth(2pt));

//b
draw(rotate(theta)*((0,0)--(0,1)), dotted);
label("b)",rotate(theta)*(0,1.1));

//a
draw(((0,0)--(-1,0)), dotted);
label("a)",(-1.1,0));

//c
draw(((0,0)--(0,1)), dotted);
label("c)",(0,1.1));