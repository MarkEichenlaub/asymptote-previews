real theta = 20;
pair loc = dir(-90 +theta);

draw((0,0)--loc);

dot(loc,6+black);

label("$\ell$",loc/2,E);
label("$m$",loc,S);

draw((-.5,0)--(.5,0), linewidth(2pt));
draw((0,0)--(0,-1),dotted);

draw(arc((0,0),.3,-90,-90+theta));
label("$A$",.34*dir(-90+theta/2));