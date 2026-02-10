real theta = 20;

pair head = dir(90-theta);

draw((0,1)--(0,0)--(1,0), linewidth(2pt));

draw((0,0)--head, blue);
dot(head,blue+6);

real g = .5;

draw(shift(head)*((0,0)--(0,-g)), arrow = Arrow(6),red);
label("$\vec{g}$",head+(0,-g/2),E,red);

real a = g*Tan(theta);

draw(shift(head)*shift((0,-g))*((0,0)--(-a,0)), arrow = Arrow(6),red);
label("$\vec{a}$",head+(-a/2,-g),S,red);

draw(shift(head)*((0,0)--(-a,-g)), arrow = Arrow(6),red);

draw(arc((0,0),.3,90-theta,90));
label("$\theta$",.36*dir(90-theta/2));

//draw(shift(head)*shift(0,-g)*((0,0)--(-a,0)), arrow = Arrow(6),red);
//label("$\vec{a}$",head+(-a/2,-g),S,red);