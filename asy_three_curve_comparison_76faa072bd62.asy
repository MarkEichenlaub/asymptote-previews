import graph;

unitsize(2cm);

real t1(real theta){
return .1/sin(2*theta);
}
real t2(real theta){
return .1/sin(2*theta)*(theta+.1);
}
real t3(real theta){
return .1/sin(2*theta)*(pi/2+.1-theta);
}

real delta = .05;
draw(box((0,0),(pi/2,1)));
label("$\theta$",(pi/4,-.2),S);
label("$t$",(0,.5),W);
label("$0$",(0,0),SW);
draw((pi/4,0)--(pi/4,.05));
label("$\pi/4$",(pi/4,0),S);
label("$\pi/2$",(pi/2,0),S);
draw(graph(t1,delta,pi/2-delta),blue);

picture pic2;
draw(pic2,box((0,0),(pi/2,1)));
label(pic2,"$\theta$",(pi/4,-.2),S);
label(pic2,"$t$",(0,.5),W);
label(pic2,"$0$",(0,0),SW);
draw(pic2,(pi/4,0)--(pi/4,.05));
label(pic2,"$\pi/4$",(pi/4,0),S);
label(pic2,"$\pi/2$",(pi/2,0),S);
draw(pic2,graph(t2,.006,pi/2-delta-.03),blue);

picture pic3;
draw(pic3,box((0,0),(pi/2,1)));
label(pic3,"$\theta$",(pi/4,-.2),S);
label(pic3,"$t$",(0,.5),W);
label(pic3,"$0$",(0,0),SW);
draw(pic3,(pi/4,0)--(pi/4,.05));
label(pic3,"$\pi/4$",(pi/4,0),S);
label(pic3,"$\pi/2$",(pi/2,0),S);
draw(pic3,graph(t3,.08,pi/2-.006),blue);

add(shift((2,0))*pic2);
add(shift((4,0))*pic3);