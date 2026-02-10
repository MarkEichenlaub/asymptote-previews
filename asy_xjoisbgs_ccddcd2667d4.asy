draw((-.3,-1)--(.3,-1)--(0,0)--cycle);
dot((0,0));

real theta = 20;

draw(rotate(theta)*((-2,0)--(2,0)), linewidth(2pt));
pair pos1 = rotate(theta)*(-1.8,0);
pair pos2 = rotate(theta)*(1.3,0);

dot(pos1, linewidth(8pt));
label("$m_1$",pos1,SE);

dot(pos2, linewidth(8pt));
label("$m_2$",pos2,N);

label("$d_1$",pos1/2,SE);

label("$d_2$",pos2/2,NW);

draw((pos2.x,0)--pos2, red+dotted);
draw((pos1.x,0)--pos1, red+dotted);

draw((-2,0)--(2,0), dashed);

label("$\delta y_2$",(pos2.x,pos2.y/2),E,red);
label("$\delta y_1$",(pos1.x,pos1.y/2),W,red);