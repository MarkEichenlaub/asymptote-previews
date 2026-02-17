unitsize(3cm);

draw((0,0)--(0,2));
draw((1,0)--(1,2));

dot((.5,1.5));

import graph;

pair camedge(real theta){
return 0.96*(cos(theta)*exp(-.8*theta), sin(theta)*exp(-.8*theta));
}

draw(shift(.5,1.5)*rotate(-70)*((0,0)--graph(camedge, 0 , 2)--(0,0)));
draw(reflect((.5,0),(.5,1))*shift(.5,1.5)*rotate(-70)*((0,0)--graph(camedge, 0 , 2)--(0,0)));

draw((.5,1.5)--(.5,-0.5), linewidth(2pt));

draw((.5,1.5)--(1,1.1),dotted);
draw((1,1.1)--(.5,1.1),dotted);
draw(arc((1,1.1),.3,180,145));
label("$\theta$",(.67,1.25));

//label("$r$",(.75,1.4));

//draw(arc((.5,1.5),.15,40,-40));
//label("$\alpha$",(.7,1.52));

label("wall",(-0.2,1));
label("wall",(1.2,1));
label("load",(0.5,-0.6));