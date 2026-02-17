unitsize(4cm);

for(int i = -10; i<11; ++i){

draw((0,-i/10)--(0,-i/10 + 1/20));

}

draw((.05,-.72)--(.05,-.62),dotted);
label("$d$",(.05,-.65),E);

for(int j = -5; j<6; ++j){
draw((-1,-j/5)--(-.2,-j/5),arrow = Arrow(6),orange);
}