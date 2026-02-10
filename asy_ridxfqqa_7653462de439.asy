draw((0,1){1,0}..{0,-1}(1,0));

real theta = 90-25;

pair point = (Cos(theta),Sin(theta));

dot(point);

draw(shift(point)*scale(.5)*((0,0)--(Sin(theta),-Cos(theta))) , arrow = Arrow(6), red);
label("$\vec{v}$",(.6,.87),red);