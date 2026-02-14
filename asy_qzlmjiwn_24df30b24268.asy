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
real x = -.5*sin(3*2*pi*t - 2.5);
real vee = .8*cos(3*2*pi*t - 2.5)+.4;
if (vee > 0){
return x;
}
else{
return 0;
}
}

//draw(graph(x,0,1),red);