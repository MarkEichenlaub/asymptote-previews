import olympiad;
unitsize(1cm);

real th = 10;

//ground
draw((-1,0)--(10,0), linewidth(3pt)+brown);
label("ground",(8,0),S,brown);

//mirror
real dy = 0;
pair end = rotate(th)*(9,0);
draw(shift(dy)*((0,0)--end),linewidth(2.5pt)+gray);
label("mirror",end,E,gray);

//normal
pair mid = end/2;
pair norm = rotate(90)*.4*end;
draw(shift(mid)*((0,0)--norm), dotted);
label("normal",mid+norm,N);

//angle mark
markscalefactor = 0.4;
draw(anglemark((10,0),(0,0),mid));
label("$10^\circ$",rotate(th/2)*3.2,E);

//incoming light
draw(shift(mid)*((-5,0)--(0,0)),   arrow = Arrow(6) , lightolive+linewidth(2pt));
label("incident ray",mid+(-2.5,0),N,lightolive);