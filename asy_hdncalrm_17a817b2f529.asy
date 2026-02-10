//TeXeR source: https://artofproblemsolving.com/texer/hdncalrm

draw((-.5,0)--(.5,0), linewidth(2pt));

draw(shift(0,1)*scale(.1)*unitcircle);

draw(shift(-.2,0)*((0,0)--(0,1.1)), blue);

for(int i = 1; i<12; ++i){

string height = string(i/5) + "$\;\mathrm{m}$";
if (height == "2$\;\mathrm{m}$"){
height = "$2.0 \;\mathrm{m}$";
}
if (i % 2 == 0){
draw(shift(-.2,0)*((-.05,i/10)--(.05,i/10)), blue);
label(height, (-.2-.05,i/10),W,blue);
}
}
label("$y$",(-.2,1.1),N,blue);

draw(shift(0,.88)*((0,0)--(0,-.2)), arrow = Arrow(6), red);
label("$v_y$",(0,.78),E,red);