fill((1,-2)--(1.1,-2)--(1.1,0){0,1}..{0,-1}(-1.1,0)--(-1.1,-2)--(-1,-2)--(-1,0){0,1}..{0,-1}(1,0)--cycle,blue);
draw(unitcircle,linewidth(2pt));

//draw((1.1,0)--(1.1,-2),blue);
//draw((1,0)--(1,-2),blue);
//draw((-1,0)--(-1,-2),blue);
//draw((-1.1,0)--(-1.1,-2),blue);
//path circle2 = scale(1.1)*unitcircle;
//real[] start = times(circle2,1.1);
//real[] finish = times(circle2,-1.1);
//draw(subpath(circle2,start[0],finish[0]), blue);