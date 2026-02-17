//TeXeR source: https://artofproblemsolving.com/texer/jkehsiay

draw((-1,0)--(0,0));
draw((0,1)--(0,-5)--(1,-5)--(1,1),linewidth(2pt));
draw((1,0)--(3,0));
fill(shift(1,2)*scale(.5)*unitcircle);
fill(shift(1,-6)*scale(.5)*unitcircle);
draw((.5,2)--(.5,-6));
draw((1.5,2)--(1.5,-6));

for(int i=-1; i<6; ++i){
    fill(shift(.5,-i)*scale(.25)*unitcircle);
    fill(shift(1.5,-i)*scale(.25)*unitcircle);
}