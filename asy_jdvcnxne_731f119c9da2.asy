//TeXeR source: https://artofproblemsolving.com/texer/jdvcnxne

unitsize(2cm);

fill(scale(2)*unitcircle,gray);
draw(scale(2)*unitcircle);
unfill(unitcircle);
draw(unitcircle);

dot((0,0));
label("$q$",(0,0),S);

//draw((0,0)--(.5,0),dotted);
//label("$r/2$",(.25,0),N);

//draw((0,0)--(0,1),dotted);
//label("$r$",(0,.5),W);

//draw((0,0)--(-1,-1)*sqrt(2),dotted);
//label("$2r$",(-1,-1),NW);

draw(unitcircle,red+linewidth(2pt));
label("$-q$",(0,1),S,red);

draw(scale(2)*unitcircle,red+linewidth(2pt));
label("$q$",(0,2),N,red);

int lines = 10;
for(int i = 0; i<lines; ++i){
real theta = 2*pi*i/lines;
draw((0,0)--(cos(theta),sin(theta)),arrow=Arrow(6));
draw(2*(cos(theta),sin(theta))--3*(cos(theta),sin(theta)),arrow=Arrow(6));
}