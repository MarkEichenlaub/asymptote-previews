unitsize(3cm);

real theta = 20;
real dist1 = 1.8;
real dist2 = 1;

draw((-1.8,1)--(1.2,1), dotted);
draw(shift(0,1)*rotate(theta)*((-1.8,0)--(1.2,0)) );

draw(shift(0,1)*((0,0)--(-1*Cos(theta)*dist1,0)--(-1*Cos(theta)*dist1,-1*Sin(theta)*dist1)--cycle), deepred+linewidth(2pt));

draw(shift(0,1)*((0,0)--(Cos(theta)*dist2,0)--(Cos(theta)*dist2,Sin(theta)*dist2)--cycle), deepgreen+linewidth(2pt));

draw((-.3,0)--(.3,0)--(0,1)--cycle);

dot((0,1));

pair pos1 = shift(0,1)*rotate(theta)*(-1*dist1,0);
pair pos2 = shift(0,1)*rotate(theta)*(dist2,0);

dot(pos1, deepred+linewidth(8pt));
//label("$m_1$",pos1,N);

dot(pos2, deepgreen+linewidth(8pt));
//label("$m_2$",pos2,N);

label("$a$",shift(0,1)*((shift(0,-1)*pos1)/2),SE,deepred);
label("$b$",shift(0,1)*((shift(0,-1)*pos2)/2),NW,deepgreen);

label("$1 \;\mathrm{cm}$",(pos1.x,1+((pos1.y - 1)/2) ),W,deepred);
//label("$$",(pos2.x,1+((pos2.y-1)/2)),E,deepgreen);