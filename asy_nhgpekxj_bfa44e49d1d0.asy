unitsize(2 cm);
real dx = .25;

real y_max = 30/18*1.1;

draw(box((-dx/2,0),(14.5*dx*60/55,y_max)));

label(rotate(90)*"$v_y$",(-dx/2-.1,1),W);
//label("$20$",(-dx/2,y_max*2/3),W);
//draw((-dx/2,y_max*3/4*2/3)--(.05-dx/2,y_max*3/4*2/3));
//label("$15$",(-dx/2,y_max*3/4*2/3),W);
//draw((-dx/2,y_max*2/4*2/3)--(.05-dx/2,y_max*2/4*2/3));
//label("$10$",(-dx/2,y_max*2/4*2/3),W);
//draw((-dx/2,y_max*1/4*2/3)--(.05-dx/2,y_max*1/4*2/3));
//label("$5$",(-dx/2,1/4*y_max*2/3),W);
//label("$0$",(-dx/2,0*y_max*2/3),W);
real xmax = 14.5*dx*60/55;
//draw((xmax - dx/2,y_max*3/4*2/3)--(xmax,y_max*3/4*2/3));
//draw((xmax - dx/2,y_max*2/4*2/3)--(xmax,y_max*2/4*2/3));
//draw((xmax - dx/2,y_max*1/4*2/3)--(xmax,y_max*1/4*2/3));
//draw((xmax - dx/2,y_max*2/3)--(xmax,y_max*2/3));
//draw((xmax - dx/2,y_max*5/6)--(xmax,y_max*5/6));
//draw((- dx/2,y_max*2/3)--(-dx/2+.05,y_max*2/3));
//draw((- dx/2,y_max*5/6)--(-dx/2+.05,y_max*5/6));
//label("$25$",(-dx/2,y_max*5/6),W);
//label("$30$",(-dx/2,y_max),W);

real myx = 0;
for(int i = 0; i<13; ++i){
myx = i*(xmax+dx/2)/12-dx/2;
//draw((myx,0)--(myx,.05));
//draw((myx,y_max)--(myx,y_max-.05));
//label(string(i*5),(myx,0),S);
}

label("$t$",(dx*7,-.1),S);

draw((-dx/2,0)--(5*dx,1.1)--(7*dx,1.1 + (2/5.5)*1.1)--(9*dx,1.1)--(14.5*dx,0)--(xmax,0),red);