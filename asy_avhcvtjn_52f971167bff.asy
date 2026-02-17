draw((-1,.2)--(1,-.2));

for(int i = -4; i<5; ++i){
draw((-2,i/5)--(-1,i/5),arrow = Arrow(6),blue);
}

draw((1,-.2)--(-1,-.2),dotted);
draw(arc((1,-.2),.9,180,180-atan(.2)*180/pi));
label("$\theta$",(0,-.1));

label("$d\cos\theta$",(-.5,-.2),S);

draw((-1,.2)--(-1,-.2),red);