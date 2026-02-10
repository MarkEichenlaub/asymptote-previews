unitsize(2cm);
draw(unitcircle);
draw(yscale(.1)*unitcircle,dotted);

int forces = 15;

for(int i = 0; i<forces; ++i){
    real theta = .1 + 2*pi*i/forces;
    pair start = (cos(theta),sin(theta)/10);
    draw(start--(start - (0,.3)), arrow = Arrow(6),red);
}