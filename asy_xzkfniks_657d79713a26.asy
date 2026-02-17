unitsize(2cm);

draw(unitcircle);
int n = 20;
for(int i = 0; i<n; ++i){
real theta = i*2*pi/n;
draw((cos(theta),sin(theta))--1.5*(cos(theta),sin(theta)),arrow = Arrow(6));
draw((-3,-2)--(-3,2));
draw((-3,0)--(-2.5,0),arrow = Arrow(6));
}