unitsize(4cm);

real r = 1;
real dr = .1;

real a = .2;
real b = 4;
real t(real y){
return a/(b-(y+2));
}

path R_out = (r-dr+t(0),0);

int num_points = 100;
for(int i = 0; i<num_points; ++i){
real theta = 360/num_points*i;
pair p = (r-dr +t(Sin(theta)) )*dir(theta);
R_out = R_out--p;
}
R_out = R_out--cycle;

fill(R_out, cyan);
fill(scale(1-dr)*unitcircle,white);

//draw(scale(1 + dr)*unitcircle,linewidth(2pt));
draw(scale(1-dr)*unitcircle, linewidth(2pt));
draw(R_out, linewidth(2pt));

//draw((0,0)--(1,0), dotted);
//label("$R$",(.5,0),N);

draw(arc((0,0),1,40,50), arrow = Arrow(6),blue);
draw(arc((0,0),1,130,140), arrow = Arrow(6),blue);
draw(arc((0,0),.94,210,240), arrow = Arrow(6),blue);
draw(arc((0,0),.94,300,330), arrow = Arrow(6),blue);