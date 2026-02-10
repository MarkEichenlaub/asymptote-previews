draw((-1,0)--(5,0), arrow = Arrow(TeXHead));
label("time",(4,0),S);
draw((0,-1)--(0,4) , arrow = Arrow(TeXHead));
label(rotate(90)*"scale reading",(0,4),W);

draw((-1,2)--(0,2)..(.2,1.8)..(.4,2)--(4,2)..(4.2,2.2)..(4.4,2)--(5,2),linewidth(2pt));