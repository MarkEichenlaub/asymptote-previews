draw((-2,1)--(2,1), linewidth(2pt));

draw((-.3,0)--(.3,0)--(0,1)--cycle);

dot((0,1));

pair pos1 = (-1.8,1);
pair pos2 = (1.3,1);

dot(pos1, linewidth(8pt));
label("$m_1$",pos1,N);

dot(pos2, linewidth(8pt));
label("$m_2$",pos2,N);

label("$d_1$",(pos1.x/2,1),S);

label("$d_2$",(pos2.x/2,1),N);