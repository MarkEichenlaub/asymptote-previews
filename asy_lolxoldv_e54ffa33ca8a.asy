//TeXeR source: https://artofproblemsolving.com/texer/lolxoldv

//draw((-2,2)--(2,2),white);
draw(shift(-2,0)*scale(0)*unitcircle);
dot((0,1));
label("$q$",(0,1),E);

dot((0,-1));
label("$-q$",(0,-1),E);

label("$d$",(0,0),E);

draw((0,-3)--(0,3),dashed);