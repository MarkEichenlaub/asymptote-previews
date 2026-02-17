size(8cm);
draw((0,0)--(1,0));

draw("$\vec{m}$",(.5,-.2)--(.5,-.1), arrow = Arrow(6));

draw("$a$",(.48,0)--(.48,-.15),dotted);

label("original setup",(.5,-.35));

draw((2,0)--(3,0));
draw((2.48,0)--(2.48,.15),dotted);
label("$a$",(2.48,1-.92),W);
draw("$\vec{m}$",(2.5,1-.9)--(2.5,1-.8),arrow = Arrow(6));
label("$\shortstack{image dipole added \\ original dipole removed}$",(2.5,1-1.1),S);