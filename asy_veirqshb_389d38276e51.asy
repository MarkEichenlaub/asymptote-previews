//TeXeR source: https://artofproblemsolving.com/texer/nphqfhhf

unitsize(3cm);

draw(unitcircle);
dot((.5,.2));
draw((.5,.2)--(1.5,.2),arrow = Arrow(6),blue);
draw((.5,.2)--(.5,.2)*.1,arrow = Arrow(6),red);
draw((.5,.2)--(.7,-.3),arrow = Arrow(6),green);

draw((-1,0)--(1,0),dashed);
draw((0,-1)--(0,1),dashed);

label("$\vec{a}_{\mathrm{disk}}$",(1.2,.2),N);
label("$\vec{a}_c$",(.25,.1),NW);
label("$\vec{a}_t$",(.6,-.1),E);