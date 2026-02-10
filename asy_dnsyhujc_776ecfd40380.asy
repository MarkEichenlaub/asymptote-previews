//TeXeR source: https://artofproblemsolving.com/texer/aohdaait

unitsize(3cm);
draw(unitcircle);
dot((-.2,.5));
draw((-.2,.5)--(.8,.5),arrow = Arrow(6),blue);
draw((-.2,.5)--(0,0),arrow = Arrow(6),red);
draw((-.2,.5)--(.3,.7),arrow = Arrow(6),green);

draw((-1,0)--(1,0),dashed);
draw((0,-1)--(0,1),dashed);

label("$\vec{a}_{\mathrm{disk}}$",(.2,.5),S);
label("$\vec{a}_c$",(-.15,.2));
label("$\vec{a}_t$",(.1,.6),N);