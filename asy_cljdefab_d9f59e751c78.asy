//TeXeR source: https://artofproblemsolving.com/texer/cljdefab

unitsize(2cm);

void ship(pair pos, real v, string name){
draw(shift(pos)* box((0,0),(2,1)));
label(name,pos+(1,.5));

real v_factor = .2;

if (v>0){
draw(shift(pos + (2.1,.5))*((0,0)--(v/v_factor,0)),arrow = Arrow(6));
string speed = string(v) + "$c$";
label(speed,pos + (2.1,.5) + (v/(2*v_factor),0),S);
}
if(v<0){
draw(shift(pos + (-0.1,.5))*((0,0)--(v/v_factor,0)),arrow = Arrow(6));
string speed = string(-v) + "$v$";
label(speed,pos + (-.1,.5) + (v/(2*v_factor),0),S);
}
}

path star;
star=expi(0)--(scale((3-sqrt(5))/2)*expi(pi/5))--expi(2*pi/5)--
     (scale((3-sqrt(5))/2)*expi(3*pi/5))--expi(4pi/5)--
     (scale((3-sqrt(5))/2)*expi(5*pi/5))--expi(6*pi/5)--
     (scale((3-sqrt(5))/2)*expi(7*pi/5))--expi(8*pi/5)--
     (scale((3-sqrt(5))/2)*expi(9*pi/5))--cycle;
star = scale(.1)*rotate(15)*star;

ship((0,0),0,"L");
filldraw(shift(2.5,2)*star,yellow);
draw(shift(2.5,1.9)*((.1,.1)--(1.8,.1)), arrow = Arrow(6));
label("$c$",(3.4,2),N);

ship((-.8,1.5),.1,"A");