//TeXeR source: https://artofproblemsolving.com/texer/zrvxvlch

for(int i = 0; i<10; ++i){
draw((0,i/3)--(4,i/3),arrow = Arrow(6));

draw((1,1)--(3,1)--(3,2)--(1,2)--cycle,linewidth(2pt));
}

label(scale(2)*"$\odot$",(2.25,1.5),red);
label("$\vec{A}$",(2.25,1.5),3E,red);