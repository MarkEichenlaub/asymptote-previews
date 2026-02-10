import graph;

real response(real t){
real omega = 40;
real tau = 10;
return 2.714^(-t/tau)*sin(omega*t);
}

draw(graph(response,0,2,n=700),blue);

draw((0,0)--(2,0),linewidth(2pt));
draw((0,-1)--(0,1),linewidth(2pt));

label("$t$",(2,0),SE);
label("$Q$",(0,1),W);