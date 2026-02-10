for(int i = 0; i<10; ++i){
draw((i,i)--(i+1,i)--(i+1,i+1));
}
draw((10,10)--(11,10));

draw((.5,0)--(10.5,10),brown+dotted+2bp,Arrows(2mm));
label("$137 \;\mathrm{m}$",(5,5), UnFill);

draw((0,-.5)--(11,-.5),brown+dotted+1bp,Arrows(2mm));
label("$nd$",(5.5,-.5), UnFill);

label("$n = $ number of steps",(5.5,-2.5));