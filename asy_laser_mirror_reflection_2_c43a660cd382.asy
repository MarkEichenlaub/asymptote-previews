import olympiad;

unitsize(4cm);
real theta = -60;
pair A = (-.5,-.5);

//mirrors
draw((-1,-1)--(0,0)--(1,-1), linewidth(2pt));

//laser
draw(shift(A)*rotate(theta)*((1,-1)--(0,0)),   arrow = Arrow(6) ,heavygreen);


markscalefactor = 0.02;
draw(rightanglemark((-1,-1),(0,0),(1,-1)),red);