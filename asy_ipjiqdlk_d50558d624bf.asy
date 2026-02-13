unitsize(5cm);
import graph;

draw((0,0)--(1,0), EndArrow(TeXHead));
draw((0,0)--(0,1), EndArrow(TeXHead));
label("$t$",(1,0),S);
label("$v$",(0,1),W);

draw((.3,.8)--(.7,.6));
draw((-.05,.8)--(.05,.8));
label("$v_i$",(-.05,.8),W);
draw((-.05,.6)--(.05,.6));
label("$v_f$",(-.05,.6),W);