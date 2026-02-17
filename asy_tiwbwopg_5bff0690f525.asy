size(4cm);
defaultpen(fontsize(10pt));

real R = 1.1, r = 0.8, h = 2;
real h_left = 0.7+.25, h_right=1.2 - 0.25;

fill((-R, h_left)--arc((0, 0), R, -180, 0)--(R, h_right)--(r, h_right)--arc((0, 0), r, 0, -180)--(-r, h_left)--cycle, 0.2*rgb(0, 0.6, 1)+white);
draw((-R, h_left)--(-r, h_left), 0.5*rgb(0, 0.6, 1));
draw((R, h_right)--(r, h_right), 0.5*rgb(0, 0.6, 1));

draw((-R, h)--arc((0, 0), R, -180, 0)--(R, h));
draw((r, h)--arc((0, 0), r, 0, -180)--(-r, h));

draw((-R/2-r/2, h_left)--(-R/2-r/2,0)--arc((0,0),(r+R)/2,-180,0)--(r/2+R/2,h_right), dotted);

//real eps = 0.2;
//draw((-R - eps, (h_left + h_right)/2)--(R + eps, (h_left + h_right)/2), gray(0.4)+dotted);

//draw("$x$", (R + eps, (h_left + h_right)/2)--(R + eps, h_right), Bars(3));
//draw("$x$", (-R - eps, (h_left + h_right)/2)--(-R - eps, h_left), Bars(3));