//TeXeR source: https://artofproblemsolving.com/texer/kwrqcypc

unitsize(1cm);

void ship(pair pos, real v, string name){
draw(shift(pos)* box((0,0),(2,1)));
label(name,pos+(1,.5));

real v_factor = .5;

if (v>0){
draw(shift(pos + (2.1,.5))*((0,0)--(v/v_factor,0)),arrow = Arrow(6));
string speed = string(v) + "$c$";
//label(speed,pos + (2.1,.5) + (v/(2*v_factor),0),S);
}
if(v<0){
draw(shift(pos + (-0.1,.5))*((0,0)--(v/v_factor,0)),arrow = Arrow(6));
string speed = string(-v) + "$v$";
//label(speed,pos + (-.1,.5) + (v/(2*v_factor),0),S);
}
}

path star;
star=expi(0)--(scale((3-sqrt(5))/2)*expi(pi/5))--expi(2*pi/5)--
     (scale((3-sqrt(5))/2)*expi(3*pi/5))--expi(4pi/5)--
     (scale((3-sqrt(5))/2)*expi(5*pi/5))--expi(6*pi/5)--
     (scale((3-sqrt(5))/2)*expi(7*pi/5))--expi(8*pi/5)--
     (scale((3-sqrt(5))/2)*expi(9*pi/5))--cycle;
star = scale(.1)*rotate(15)*star;

draw((0,0)--(0,3),blue);
label("start",(0,0),S,blue);

draw((10,0)--(10,3),blue);
label("finish",(10,0),S,blue);

ship((4,-2),-.2,"A");
ship((7,0),.3,"G ($2 \;\mathrm{s}$)");
ship((9*.4-2,2),0,"L ($5 \;\mathrm{s}$)");
label("$4 \;\mathrm{m/s}$",(3.5,-1.5),W);
label("$6 \;\mathrm{m/s}$",(10,.5),E);

draw((0,1.5)--(10,1.5),brown+dotted+1bp,Arrows(2mm));
label("$20\,\mathrm{m}$",(5,1.5), UnFill);

draw((-.05,2)--(-.45,2), arrow = Arrow(6), blue);
label("$4 \;\mathrm{m/s}$",(-.45,2),W,blue);

draw(shift(10,0)*((-.05,2)--(-.45,2)), arrow = Arrow(6), blue);
label("$4 \;\mathrm{m/s}$",(10-.45,2),W,blue);