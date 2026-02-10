import graph;

pen nice_red = rgb(1, 0.2, 0.4);

real pi = 4 * atan(1);
real eps = 0.1;
real xmax = 1 + eps, ymax = xmax;

size(8cm);
xaxis(0, xmax, EndArrow(TeXHead));
yaxis(0, ymax, EndArrow(TeXHead));
label("$t$", (xmax, 0), dir(0));
label("$v$", (0, ymax), dir(0));

real y(real t){
return 0.4*sin(3*pi*t);
}
real dy(real t){
return 0.4*3*pi*cos(3*pi*t);
}

draw(graph(y, 0, 1));

real dt = 0.1;
real x_1 = 1/6 - dt;
real x_2 = 1/6 + dt;

draw((x_1, 0)--(x_1, y(x_1)), nice_red + linewidth(1));
draw((x_2, 0)--(x_2, y(x_2)), nice_red + linewidth(1));

draw((0,y(x_1))--(x_2*1.3,y(x_1)), nice_red + dashed);

real s_1 = dy(x_1);
real s_2 = dy(x_2);

real dt = 0.07;

draw(shift(x_1,y(x_1))*scale(dt)*((-1,-1*s_1)--(1,s_1)), nice_red +linewidth(1.5) );
draw(shift(x_2,y(x_2))*scale(dt)*((-1,-1*s_2)--(1,s_2)), nice_red +linewidth(1.5) );