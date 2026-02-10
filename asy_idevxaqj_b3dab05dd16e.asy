unitsize(2cm);

path fulcrum = (-.3,-1)--(.3,-1)--(0,0)--cycle;

draw(fulcrum);
draw((-.2,0)--(2,0),linewidth(2pt));

real dy = .03;

draw(shift(2.18,dy)*fulcrum);
draw(shift(2.18,dy)*((-.2,0)--(2,0)), linewidth(2pt));

dy = 0;

draw(shift(2.18*2,dy)*fulcrum);
draw(shift(2.18*2,dy)*((-.2,0)--(2,0)), linewidth(2pt));

draw(shift(-.2,0)*scale(.1)*box((0,0),(1,1)) );

draw(shift(2.18*2,dy)*shift(1.9,0)*scale(.1)*box((0,0),(1,1)) );