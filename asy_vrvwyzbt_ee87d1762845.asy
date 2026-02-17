for(int i = 0; i<10; ++i){
draw((-2,i)--(5,i), arrow = Arrow(6) );
}

draw((1.5,0)--(1.5,10),linewidth(2pt));

draw((1.7,3)--(1.7,7),arrow = Arrow(6));
label("$I$",(1.7,5),E);