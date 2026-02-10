unitsize(6cm);

real theta = 40;
pair loc = dir(-90 +theta);

draw((0,0)--loc);

dot(loc,6+black);

label("$\ell$",loc/2,E);
label("$m$",loc,NE);

draw((-.5,0)--(.5,0), linewidth(2pt));
draw((0,0)--(0,-1),dotted);

draw(arc((0,0),1,-90,-90+theta), dashed);
//label("$\theta$",.34*dir(-90+theta/2));
label("$d$",dir(-90+theta/2)*1.05);

draw((loc.x,-1)--loc, dotted);
label("$y$",(loc.x,(-1 + loc.y)/2),E);