unitsize(4cm);

draw((0,0)--(1,0));
draw((0,0)--(0,1));

import graph;

real v(real t){
real vee = .5*cos(3*2*pi*t-pi)+.15;
if(vee>0){
return vee;
}
else{
return 0;
}
}

draw(graph(v,0,1));

label("$t$",(1,0),S);
label("$v$",(0,1),W);

draw((0,.2)--(1,.2),dotted);
label("$u$",(0,.2),W);

real x(real t){

real vee = .5*cos(3*2*pi*t-pi)+.15;
real x = -.5*sin(3*2*pi*t - pi);

if (vee > 0){
return x;
}
else{
return 0;
}
}

draw(yscale(.5)*shift(0,.6)*graph(x,.0675,.0675+1/6+.031),blue);
draw(yscale(.5)*shift(1/3,.6)*graph(x,.0675,.0675+1/6+.031),blue);
draw(yscale(.5)*shift(2/3,.6)*graph(x,.0675,.0675+1/6+.031),blue);

draw((0,.3)--(1,.3),dotted+blue);
label("$x_0$",(0,.3),W,blue);