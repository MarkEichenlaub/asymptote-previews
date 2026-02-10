size(10cm, 0);

draw((0,0)--(0,.5));
draw((0,-.05)--(0,-.4));
draw((0,-.45)--(0,-1));

for(int i=0; i<7; ++i){
draw((-.8,.5-i/4)--(-.1,.5-i/4),arrow = Arrow(6),orange);
}

draw((3,-1)--(3,.5));

//draw((.02,-.7)--(2.98,-.7),dotted);
//label("$L$",(1.5,-.7),S);
//label("$d$",(0,-.25),E);

dot((3,-.25));

dot((3,.3));
label("$y$",(3,0.05),E);
draw((3,.3)--(0,0),dotted);
label("R",(1.5,.15),N);

draw((0,0)--(3,0),dotted);
label("L",(1.5,0),S);

draw(arc((0,0),.8,0,6));
label("$\theta$",(.8,0),NE);

draw(shift(3,.05)*scale(3)*unitcircle, dashed);