draw((0,0)--(.3,3));
dot((.3,3));

draw((0,0)--(0,3.2),dotted);

draw(arc((0,0),(0,2),(.3,3),CW));
label("$\theta$",(.1,2),N);

draw((.3,3)--(.3,1),arrow = Arrow(6),blue);
draw(shift((.3,3))*scale(.1)*((0,0)--(3 ,-.3)), dotted+blue,arrow = Arrow(2));
label("$g\sin\theta$",(.3,-.03) + (.38,3),N,blue);

draw(((.3,-.03) + (.3,3))--(.3,1),dotted+blue);