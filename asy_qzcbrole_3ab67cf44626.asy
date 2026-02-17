real theta = 15;

draw(rotate(-theta)*xscale(5)*yscale(.2)*((-1,-1)--(1,-1)--(1,1)--(-1,1)--cycle));

dot((0,0));

draw(rotate(-theta)*shift((-3,.2))*((0,0)--(1,0)--(1,1)--(0,1)--cycle));

draw((-5,0)--(5,0),dotted);

draw(arc((0,0),3,0,-theta));
label("$\theta$",(3.3,-.3));

draw(rotate(-theta)*((-2.5,.5)--(0,.5)),dotted);
label("$x$",(-1.2,1.1));