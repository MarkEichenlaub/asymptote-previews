import olympiad;

unitsize(5cm);

real theta = 0; //rotate entire picture
real inc = -35; //angle of incidence / reflection

//mirror
draw(rotate(theta)*((-1,0)--(1,0)), linewidth(2pt));
label("mirror", rotate(theta)*(1,0), SE);

//normal
draw(rotate(theta)*shift((0,0))*((0,0)--(0,1)), dotted);

//right angle marker (left side of normal)
markscalefactor = 0.02;
draw(rightanglemark(rotate(theta)*(-1,0), (0,0), rotate(theta)*(0,1)), red);

//incident ray
draw(rotate(inc)*rotate(theta)*((0,1)--(0,0)),   arrow = Arrow(6) , heavygreen+linewidth(1pt));
label("light ray", rotate(inc)*rotate(theta)*(0,0.85), E, heavygreen);


//angle of incidence
markscalefactor = 0.04;
draw(rotate(theta)*anglemark(rotate(inc)*(0,1),(0,0),(0,1)), blue);
label("angle of incidence",(0,0),S,blue);