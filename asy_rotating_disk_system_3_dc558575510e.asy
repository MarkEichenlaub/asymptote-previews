size(8cm);

draw(unitcircle,linewidth(2pt));
draw("$R$",(0,0)--(0,1),dotted);

draw((-2,0)--(2,0));

dot((-2,0));
label("$m$",(-2,0),S);
dot("$m$",(2,0));

label("$M$",(0,-1),S);

draw(shift(0,-.1)*((0,0)--(2,0)), dotted);
label("$r_0$",(1.2,-.1),S);

draw(arc((0,0),1.2,60,120),   arrow = Arrow(6) );
label("$\omega_0$",(0,1.2),N);