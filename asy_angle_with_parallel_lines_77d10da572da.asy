dot((0,0));
dot((0,1));

draw((0,0)--(0,1));
label("$d$",(0,.5),W);

real theta  = 30;

draw(shift((0,1))*((0,0)--3*(Cos(theta),Sin(theta))));
draw(shift((0,0))*((0,0)--3*(Cos(theta),Sin(theta))));

draw((0,1)--(sqrt(3)/4,.25));