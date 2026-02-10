unitsize(2 cm);
real dx = .25;

draw((0,0)--(0,.1), arrow = Arrow(6),red);
draw(shift(1*dx,0)*((0,0)--(0,.3)), arrow = Arrow(6),red);
draw(shift(2*dx,0)*((0,0)--(0,.5)), arrow = Arrow(6),red);
draw(shift(3*dx,0)*((0,0)--(0,.7)), arrow = Arrow(6),red);
draw(shift(4*dx,0)*((0,0)--(0,.9)), arrow = Arrow(6),red);
draw(shift(5*dx,0)*((0,0)--(0,1.1)), arrow = Arrow(6),red);
draw(shift(6*dx,0)*((0,0)--(0,1.1)), arrow = Arrow(6),red);
draw(shift(7*dx,0)*((0,0)--(0,1.1)), arrow = Arrow(6),red);
draw(shift(8*dx,0)*((0,0)--(0,1.1)), arrow = Arrow(6),red);
draw(shift(9*dx,0)*((0,0)--(0,1.1)), arrow = Arrow(6),red);
draw(shift(10*dx,0)*((0,0)--(0,.9)), arrow = Arrow(6),red);
draw(shift(11*dx,0)*((0,0)--(0,.7)), arrow = Arrow(6),red);
draw(shift(12*dx,0)*((0,0)--(0,.5)), arrow = Arrow(6),red);
draw(shift(13*dx,0)*((0,0)--(0,.3)), arrow = Arrow(6),red);
draw(shift(14*dx,0)*((0,0)--(0,.1)), arrow = Arrow(6),red);

for(int i = 0; i<15; ++i){
label(string(i+1),(i/4,0),S,red);
}