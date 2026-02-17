//TeXeR source: https://artofproblemsolving.com/texer/opadkuvr
unitsize(3cm);

real theta = 55;

//mirror
draw(rotate(theta)*((-1,0)--(1,0)), linewidth(2pt));

//normal
draw(rotate(theta)*((0,0)--(0,1)), dotted);
markscalefactor = 0.025;
draw(rightanglemark(rotate(theta)*(1,0),(0,0),rotate(theta)*(0,1)),red);