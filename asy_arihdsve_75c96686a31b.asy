unitsize(1.5cm);

label("$\vec{B}$",(5.3,3));

for(real j = 0; j<4; ++j){
for(real i = -2; i<6; ++i){
label("$\odot$",(i,j));
}}

dot((1,1.5));
draw((1,1.5)--(3,1.5),arrow = Arrow(6));
label("$\vec{v}$",(3,1.5),S);

draw((1,1.5)--(1,.6),arrow = Arrow(6),red);
label("$\vec{F}$",(1,.7),E,red);