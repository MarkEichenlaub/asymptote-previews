fill((-1,-.5)--(-1,0)--(1,0)--(1,-.5)--cycle,gray);
fill(yscale(.2)*unitcircle);
fill(shift(0,-.5)*yscale(.2)*unitcircle ,gray);
draw(yscale(.2)*unitcircle);

draw(shift(0,-.5)*yscale(.2)*arc((0,0),1,0,-180));
draw(shift(0,-.5)*yscale(.2)*arc((0,0),1,0,180),dashed);

draw((0,0)--(0,1),arrow = Arrow(6),blue);
label("$\vec{\omega}$",(0,.5),E,blue);