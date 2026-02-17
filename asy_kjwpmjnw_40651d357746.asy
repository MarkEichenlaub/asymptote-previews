//TeXeR source: https://artofproblemsolving.com/texer/kjwpmjnw

draw((0,4)--(0,0)--(2,0)--(2,4),linewidth(2pt));
draw((0,3.5)--(2,3.5));
fill(shift(0,2)*unitcircle);

draw((-.5,2)--(-.5,1.5),red,arrow = Arrow(6));
draw((.5,2)--(.5,1.5),red,arrow = Arrow(6));

for(int i=0; i<7; ++i){
    real theta = 95 + i*170/6;
    real th = theta*pi/180;
    real l = .75 - i/20;
    //draw(rotate(i*20)*((0,0)--(1,0)),arrow = Arrow(6));
    draw(shift(-(1+l)*cos(th),-(1+l)*sin(th))*shift(0,2)*rotate(theta)*((0,0)--(l,0)),arrow = Arrow(6),red);
    }