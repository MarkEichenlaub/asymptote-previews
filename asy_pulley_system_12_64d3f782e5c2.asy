draw((-1.8,1)--(1.2,1), linewidth(2pt));

draw((-.3,0)--(.3,0)--(0,1)--cycle);

dot((0,1));

pair pos1 = (-1.8,1);
pair pos2 = (1.2,1);

dot(pos1, linewidth(8pt));
//label("$M_1$",pos1,N);

dot(pos2, linewidth(8pt));
//label("$M_2$",pos2,N);

label("$a$",(pos1.x/2,1.1),N);
draw(shift(0,.1)*(pos1--(0,1)),dotted);

label("$b$",(pos2.x/2,0.9),S);
draw(shift(0,-.1)*(pos2--(0,1)),dotted);