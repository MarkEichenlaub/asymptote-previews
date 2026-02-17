draw((0,0)--(1,2));
draw((0,0)--(-1,2));
draw((0,0)--(0,2),dashed);
fill(shift(-.63,1.33)*scale(.05)*unitcircle);
label("$R$",(-.2,1.3),N);
draw((-.6,1.3)--(0,1.3),arrow=Arrow(6));
draw(arc((0,0),.6,90,65));
label("$\theta$",(.2,.65));