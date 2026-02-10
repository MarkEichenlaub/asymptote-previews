real theta = 40;

pair head = dir(90-theta);

//draw((0,1)--(0,0)--(1,0), linewidth(1pt));

draw((0,0)--head, blue);
dot(head,blue+6);

real g = .5;

draw(shift(head)*((0,0)--(0,-g)), arrow = Arrow(6),red);
label("$g$",head+(0,-g/2),E,red);

real a = g*Tan(theta);

//draw(shift(head)*((0,0)--(-a,0)), arrow = Arrow(6),red);
//label("$\vec{a}$",head+(-a/2,0),N,red);

//draw(arc((0,0),.3,90-theta,90));
//label("$\theta$",.36*dir(90-theta/2));

draw(shift(head)*shift(0,-g)*((0,0)--(-a,0)), arrow = Arrow(6),deepgreen+linewidth(2pt));
label("$a$",head+(-a/2,-g),S,deepgreen);
label("opposite",head+(-a/2,-g-.06),S,deepgreen);

pair G = (0,-g);
pair A = (-a,0);

draw(shift(head)*((0,0)--G+A), arrow = Arrow(6),red+linewidth(1pt));
label("$\sqrt{a^2 + g^2}$",head+(G+A)/2,NW,red);

draw(arc(head,.15,-90,-90-theta));
label("$\theta$",(.57,.58));