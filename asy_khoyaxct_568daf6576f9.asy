real below = -2;

draw((-.3,-1+below)--(.3,-1+below)--(0,0)--cycle);
dot((0,0));

real theta = 20;

pair left = rotate(theta)*(-2,below);
pair right = rotate(theta)*(2,below);
pair mid = rotate(theta)*(0,below);
pair pos1 = rotate(theta)*(-1.8,below);
pair pos2 = rotate(theta)*(1.8,below);

draw((0,0)--mid, linewidth(2pt));
draw(left--right, linewidth(2pt));

dot(pos1, linewidth(8pt));
label("$m_1$",pos1,SE);

dot(pos2, linewidth(8pt));
label("$m_2$",pos2,N);

draw((pos2.x,below)--pos2, red+dotted);
draw((pos1.x,below)--pos1, red+dotted);

draw((-2,below)--(2,below), dashed);

label("$\delta y_2$",(pos2.x,pos2.y/2+below/2),E,red);
label("$\delta y_1$",(pos1.x,pos1.y/2+below/2),W,red);