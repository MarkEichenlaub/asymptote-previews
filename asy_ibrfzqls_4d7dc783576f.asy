unitsize(2cm);

draw(unitcircle);
int n = 20;
for(int i = 0; i<n; ++i){
real theta = i*2*pi/n;
draw((cos(theta),sin(theta))--1.5*(cos(theta),sin(theta)),arrow = Arrow(6));
}

label("pea shooter sitting stationary fires peas in all directions",(0,-1.5),S);