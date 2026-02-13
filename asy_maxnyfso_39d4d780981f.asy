size(5cm);
defaultpen(fontsize(10pt));

real theta = 40;
real R = .7;

dot((0,0));

pair com = rotate(theta)*shift((0,-R))*(0,0);

draw(rotate(theta)*shift((0,-R))*((0,1)--(0,-1)), linewidth(1.5));

dot(com);

label("$R$",(rotate(theta)*shift(0,-R)*(0,R/2)),NE);

draw(com--(com - (0,.6)), arrow = Arrow(TeXHead));
label("$mg$",(com - (0,.3)),W);

draw((0,0)--(0,com.y),dotted);
draw((0,com.y)--com,dotted);
label("$R\sin\theta$", (com.x/2,com.y),S);
draw("$\theta$", arc((0, 0), 0.2, -90, -90 + theta));