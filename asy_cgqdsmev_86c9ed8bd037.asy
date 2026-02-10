unitsize(2cm);

draw((0,-1)--(0,1));
draw((0,-.1)--(0,.1),white);

draw((3,-1)--(3,1));

label("$x$",(3,.2),E);

draw((0,-.7)--(3,-.7),dotted);
label("$3\;\mathrm{m}$",(1.5,-.7),S);

label("$d$",(0,0),W);

dot((3,.4));
draw((0,0)--(3,.4),dashed);
draw((0,0)--(3,0),dashed);
draw(arc((0,0),1.5,0,7));
label("$\theta$",(1.5,.1),E);