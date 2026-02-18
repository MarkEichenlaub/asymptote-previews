unitsize(3cm);

real theta = 55;

//mirror
draw(rotate(theta)*((-1,0)--(1,0)), linewidth(2pt));

//normal
draw(rotate(theta)*shift((-.75,0))*((0,0)--(0,1)), dotted);
draw(rotate(theta)*shift((-.5,0))*((0,0)--(0,1)), dotted);
draw(rotate(theta)*shift((-.25,0))*((0,0)--(0,1)), dotted);
draw(rotate(theta)*shift((0,0))*((0,0)--(0,1)), dotted);
draw(rotate(theta)*shift((.25,0))*((0,0)--(0,1)), dotted);
draw(rotate(theta)*shift((.5,0))*((0,0)--(0,1)), dotted);
draw(rotate(theta)*shift((.75,0))*((0,0)--(0,1)), dotted);

//bottom side normals
theta = theta + 180;
pair d = dir(theta)*.125;
draw(shift(d)*rotate(theta)*shift((-.75,0))*((0,0)--(0,1)), dotted);
draw(shift(d)*rotate(theta)*shift((-.5,0))*((0,0)--(0,1)), dotted);
draw(shift(d)*rotate(theta)*shift((-.25,0))*((0,0)--(0,1)), dotted);
draw(shift(d)*rotate(theta)*shift((0,0))*((0,0)--(0,1)), dotted);
draw(shift(d)*rotate(theta)*shift((.25,0))*((0,0)--(0,1)), dotted);
draw(shift(d)*rotate(theta)*shift((.5,0))*((0,0)--(0,1)), dotted);
draw(shift(d)*rotate(theta)*shift((.75,0))*((0,0)--(0,1)), dotted);