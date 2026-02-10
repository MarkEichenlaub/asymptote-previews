unitsize(2 cm);
real dx = .25;

draw((0,0)--(0,.1), arrow = Arrow(6),red);
draw(shift(1*dx,0)*((0,0)--(0,.3)), arrow = Arrow(6),red);
draw(shift(2*dx,0)*((0,0)--(0,.5)), arrow = Arrow(6),red);
draw(shift(3*dx,0)*((0,0)--(0,.7)), arrow = Arrow(6),red);
draw(shift(4*dx,0)*((0,0)--(0,.9)), arrow = Arrow(6),red);
draw(shift(5*dx,0)*((0,0)--(0,1.1)), arrow = Arrow(6),red);
draw(shift(6*dx,0)*((0,0)--(0,1.1)), arrow = Arrow(6),red);
draw(shift(7*dx,0)*((0,0)--(0,1.1)), arrow = Arrow(6),red);
draw(shift(8*dx,0)*((0,0)--(0,1.1)), arrow = Arrow(6),red);
draw(shift(9*dx,0)*((0,0)--(0,1.1)), arrow = Arrow(6),red);
draw(shift(10*dx,0)*((0,0)--(0,.9)), arrow = Arrow(6),red);
draw(shift(11*dx,0)*((0,0)--(0,.7)), arrow = Arrow(6),red);
draw(shift(12*dx,0)*((0,0)--(0,.5)), arrow = Arrow(6),red);
draw(shift(13*dx,0)*((0,0)--(0,.3)), arrow = Arrow(6),red);
draw(shift(14*dx,0)*((0,0)--(0,.1)), arrow = Arrow(6),red);

real y_max = 20/18*1.1;

draw(box((-dx/2,0),(14.5*dx*60/55,y_max)));

//label(rotate(90)*"$\vec{v} \quad (\mathrm{m/s})$",(-dx/2-.4,.5),W);
//label("$20$",(-dx/2,y_max),W);
//draw((-dx/2,y_max*3/4)--(.05-dx/2,y_max*3/4));
//label("$15$",(-dx/2,y_max*3/4),W);
//draw((-dx/2,y_max*2/4)--(.05-dx/2,y_max*2/4));
//label("$10$",(-dx/2,y_max*2/4),W);
//draw((-dx/2,y_max*1/4)--(.05-dx/2,y_max*1/4));
//label("$5$",(-dx/2,1/4*y_max),W);
//label("$0$",(-dx/2,0*y_max),W);
real xmax = 14.5*dx*60/55;
draw((xmax - dx/2,y_max*3/4)--(xmax,y_max*3/4));
draw((xmax - dx/2,y_max*2/4)--(xmax,y_max*2/4));
draw((xmax - dx/2,y_max*1/4)--(xmax,y_max*1/4));

real myx = 0;
for(int i = 0; i<13; ++i){
myx = i*(xmax+dx/2)/12-dx/2;
draw((myx,0)--(myx,.05));
draw((myx,y_max)--(myx,y_max-.05));
label(string(i*5),(myx,0),S);
}

label("$t \quad (\mathrm{s})$",(dx*7,-.4),S);