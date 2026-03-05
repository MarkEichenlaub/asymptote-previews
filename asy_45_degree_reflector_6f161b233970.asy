import olympiad;
unitsize(6cm);

real th = 45;

//mirrors
draw((0,0)--rotate(th/2)*(0,-1),linewidth(2pt));
draw((0,0)--rotate(-th/2)*(0,-1),linewidth(2pt));
label("mirror",rotate(th/2)*(0,-1),SE);
label("mirror",rotate(-th/2)*(0,-1),SW);

//angle of mirrors
draw(anglemark(rotate(-th/2)*(0,-1),(0,0),rotate(th/2)*(0,-1)));
label("$45^\circ$",(0,-.24),S);

//incident ray
pair hit = rotate(-th/2)*(0,-.5);
draw(shift(hit)*((0,-.5)--(0,0)),   arrow = Arrow(6) , lightolive+linewidth(2pt));
label("\begin{tabular}{c}incident \\ ray\end{tabular}",hit+(0,-.5),S,lightolive);

//normal
draw(shift(hit)*((0,0)--rotate(90-th/2)*(0,-.3)),dotted);

//angle of incidence
draw(shift(hit)*anglemark((0,-1),(0,0),rotate(90-th/2)*(0,-1),5),red);
label("\begin{tabular}{c}angle of \\ incidence\end{tabular}",hit + rotate(90-th/2)*(0,-.24),S,red);