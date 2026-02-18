import olympiad;

unitsize(4cm);

real theta = -60;
pair A = (-.5,-.5);

//mirrors
draw((-1,-1)--(0,0)--(1,-1), linewidth(2pt));

//angle of incidence marker
markscalefactor = 0.04;
draw(anglemark(A+rotate(theta)*(1,-1),A,A+(1,-1)),red);

//laser
draw(shift(A)*rotate(theta)*((1,-1)--(0,0)),   arrow = Arrow(6) ,heavygreen);

//normal
draw(shift(A)*((0,0)--(1,-1)), dotted);