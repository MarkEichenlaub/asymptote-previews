//TeXeR source: https://artofproblemsolving.com/texer/ztrkajzn

for(int i = 0; i<10; ++i){
draw((0,i/3)--(4,i/3),arrow = Arrow(6));

draw((1,1)--(3,1)--(3,2)--(1,2)--cycle,linewidth(2pt));
}

label("$\vec{E}$",(4,1.5),E);