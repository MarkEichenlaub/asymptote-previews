unitsize(3cm);

draw((-1,0)--(1,0));

dot((0,0));
label("$M$",(0,0),NW);

draw((0,0)--(0,1),dotted);

real theta = 15;

draw((0,0)--(Cos(90-theta),Sin(90-theta)));

dot((Cos(90-theta),Sin(90-theta)));
label("$M$",(Cos(90-theta),Sin(90-theta)),N);

draw("$\theta$",arc((0,0),.7,90,90-theta));

draw((-.2,-.1)--(.2,-.1),arrow = Arrow(6),gray);
draw((.2,-.1)--(-.2,-.1),arrow = Arrow(6),gray);

draw(arc((0,0),1,90-theta-5,90-theta-25),arrow = Arrow(6),gray);
draw(arc((0,0),1,90-theta-25,90-theta-5),arrow = Arrow(6),gray);