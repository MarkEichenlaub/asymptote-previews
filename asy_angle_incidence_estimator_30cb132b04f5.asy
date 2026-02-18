import olympiad;

unitsize(5cm);

real theta = 110; //rotate entire picture
real inc = -75; //angle of incidence / reflection

//mirror
draw(rotate(theta)*((-1,0)--(1,0)), linewidth(2pt));

//normal
draw(rotate(theta)*shift((0,0))*((0,0)--(0,1)), dotted);

//right angle marker (right side of normal, between normal and mirror)
markscalefactor = 0.02;
draw(rightanglemark(rotate(theta)*(1,0), (0,0), rotate(theta)*(0,1)), red);

//mirror label
label("mirror", rotate(theta)*(-1,0), SE);

//angle of incidence
//markscalefactor = 0.04;
//draw(rotate(theta)*anglemark(rotate(inc)*(0,1),(0,0),(0,1)), red);
//label("$75^\circ$",(-.35,.15), red);
//label("angle of incidence",(0,0),S,red);

//incident ray
draw(rotate(inc)*rotate(theta)*((0,1)--(0,0)),   arrow = Arrow(6) , heavygreen+linewidth(1pt));