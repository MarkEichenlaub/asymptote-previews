unitsize(3cm);
real theta = 1;
real L = 1;
pair top = (0,Tan(theta));
real s = 0.1;

draw((0,0)--(L,0)--top--cycle);
label("$L$",(L/2,0),S);

draw(arc((L,0),.3,180,180-theta));
//label("$\theta$",(L,0)+dir(180-theta/2)*.35);

draw(shift(top)*rotate(-theta)*scale(s)*box((0,0),(1,1)) );