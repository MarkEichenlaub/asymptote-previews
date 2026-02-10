draw(unitcircle,linewidth(2pt));

draw((0,0)--(1,0),dotted);

real theta = 55;

pair loc = dir(theta);

dot(loc, red+6);

draw(arc((0,0),.3,0,theta));
draw((0,0)--loc,dotted);
label("$\theta$",dir(theta/2)*.35);