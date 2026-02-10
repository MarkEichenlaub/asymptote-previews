unitsize(2cm);
draw(unitcircle);
draw(yscale(.1)*unitcircle,dotted);

int forces = 15;

for(int i = 0; i<forces; ++i){
    real theta = pi*i/(forces-1);
    pair start = (cos(theta),sin(theta));
    draw(start--start*1.2, arrow = Arrow(6),red);
}