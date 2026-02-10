unitsize(3cm);
real theta = 60;

draw(shift(2,0)*((0,0)--rotate(-theta)*(2,0)),linewidth(2pt));
dot((2,0), 6+red);
label("physical pendulum (rod)",(2.3,-2),S);

draw(shift(0,0)*((0,0)--rotate(-theta)*(2,0)));
dot((0,0),6+red);
dot((0,0)+rotate(-theta)*(2,0), 10+black);
label("simple pendulum (string)",(.3,-2),S);