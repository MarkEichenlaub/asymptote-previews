import olympiad;

unitsize(4cm);

real th = 60; //angle of incidence

//mirror
draw((-1,0)--(1,0),linewidth(2pt));

//normal
draw((0,0)--(0,1),dotted);
label("normal",(0,1),N);

//light rays
draw(dir(90+th)--(0,0)--dir(90-th),   arrow = Arrow(6) , linewidth(2pt)+lightolive);

//false angle of incidence
draw(anglemark(rotate(th)*(0,1),(0,0),(-1,0)),red);
label("\begin{tabular}{c} angle of \\ incidence (OoPS) \end{tabular}",dir(90+th/2)*.26,SW,red);

//false angle of reflection
draw(anglemark((1,0),(0,0),dir(90-th)),blue);
label("\begin{tabular}{c} angle of \\ reflection (OoPS) \end{tabular}",dir(90-th/2)*.26,SE,blue);