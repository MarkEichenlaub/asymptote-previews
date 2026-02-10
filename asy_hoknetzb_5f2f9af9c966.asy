unitsize(4cm);

picture p;
picture p1;
currentpicture = p1;

draw(box((0,0),(2,1)));

pair f1 = (.2,.25);
pair f2 = (f1.x, 1 - f1.y);
real theta = 20;
real L = .25;

draw(shift(f1)*rotate(theta)*((0,-1*L)--(0,L)), linewidth(2pt));
draw(shift(f2)*rotate(-theta)*((0,-1*L)--(0,L)), linewidth(2pt));

//draw((2.05,.5)--(2.4,.5), arrow = Arrow(6), blue);
//label("$\vec{a}_2$",(2.2,.5),N,blue);

pair F = (.5,0);

draw( shift(f1)*(rotate(theta)*(-1*F)--(0,0)), arrow = Arrow(6), red);
draw(shift(f2)*(rotate(-theta)*(-1*F)--(0,0)), arrow = Arrow(6), red);
label("$\vec{F}_{A \to C; L}$",f1 + rotate(theta)*(-.9*F), S,red);
label("$\vec{F}_{A \to C; U}$",f2 + rotate(-theta)*(-.9*F), N,red);

pair f1b = f1 - rotate(theta)*(0,L);

draw(f1b--(f1b.x, 1-f1b.y), dotted);

draw(arc(f1b,.3,90,90+theta));
label("$\theta$",f1b + dir(90 + theta/2)*.36);
label("Cart 2", (1,-.2),S);

picture p2;
currentpicture = p2;
draw(box((0,0),(2,1)));

pair f1 = (.2,.5);
real theta = 0;
real L = .25;

draw(shift(f1)*rotate(theta)*((0,-1*L)--(0,L)), linewidth(2pt));

pair F = (.5,0);

draw( shift(f1)*(rotate(theta)*(-1*F)--(0,0)), arrow = Arrow(6), red);
label("$\vec{F}_{A \to C}$",f1 + rotate(-theta)*(-.9*F), N,red);

pair f1b = f1 - rotate(theta)*(0,L);

draw(f1b--(f1b.x, 1-f1b.y), dotted);
label("Cart 1", (1,-.2),S);

currentpicture = p;
unitsize(3cm);
add(shift(-3,0)*p2);
add(p1);