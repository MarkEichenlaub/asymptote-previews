//TeXeR source: https://artofproblemsolving.com/texer/agaqwwmi
unitsize(5cm);

real theta = 0; //rotate entire picture
real inc = -35; //angle of incidence / reflection

//mirror
draw(rotate(theta)*((-1,0)--(1,0)), linewidth(2pt));

//normal
draw(rotate(theta)*shift((0,0))*((0,0)--(0,1)), dotted);

//angle of incidence
markscalefactor = 0.04;
draw(rotate(theta)*anglemark(rotate(inc)*(0,1),(0,0),(0,1)), red);
label("angle of incidence",(0,0),S,red);

//incident ray
draw(rotate(inc)*rotate(theta)*((0,1)--(0,0)),   arrow = Arrow(6) , heavygreen+linewidth(1pt));