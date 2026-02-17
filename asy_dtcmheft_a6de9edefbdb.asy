unitsize(5cm);
import graph;

draw((0,0)--(1,0));
draw((0,0)--(0,1));
label("$t$",(1,0),S);
label("$v$",(0,1),W);

real vterm(real t){
return (exp(2*t)+1)/(exp(2*t)-1);
}

real modvterm(real t){
return .7*vterm(t - .2 + .867);
}

draw(graph(modvterm,.2,1));
draw((0,.7)--(1,.7),dotted);
draw((-.05,.7)--(.05,.7));
label("$v_{\mathrm{terminal}}$",(-.05,.7),W);

draw((0,0)--(.2,1));