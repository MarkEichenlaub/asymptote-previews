unitsize(6cm);
draw((0,0)--(0,-1));
filldraw(shift(0,-1.1)*scale(.1)*unitcircle,lightgray);
label("$L-r$",(0,-.5),E);
draw((0,-1.1)--(0,-1), dotted);
label("$r$",(0,-1.05),E);
label("Bert's model",(0,-1.2),S);

draw((-.7,0)--(-.7,-1.1));
dot((-.7,-1.1));
label("$L$",(-.7,-.55),E);
label("Abby's model", (-.7,-1.2),S);