size(8cm);

real carlength = 12, frontratio = 0.2, carheight = 1, wheelratio = 0.15, wheel_r = 0.5,
    carfront = carlength*frontratio, carback = -carlength*(1 - frontratio);

draw(box((carback, -carheight), (carfront, 0)));
draw(circle((carback + carlength*wheelratio, -carheight - wheel_r), wheel_r));
draw(circle((carfront - carlength*wheelratio, -carheight - wheel_r), wheel_r));

draw("$F$", (carfront, -carheight/2)--(carfront + carlength/6, -carheight/2), dir(60), Arrow(TeXHead), Margins);

path[] funnel = (1, 0)--(1, 2)--(5, 6) ^^ (-1, 0)--(-1, 2)--(-5, 6);
real funnelheight = 2;
for(int i = 0; i < 500; ++i)
    dot((unitrand()/2 - 1/4, funnelheight - funnelheight*unitrand()^sqrt(2)), linewidth(0.5) + gray(0.2 + 0.5*unitrand()));
draw(shift(0, funnelheight)*scale(1/4)*(funnel[0]--reverse(funnel[1])--cycle));

label("$\mu$", (1/4, funnelheight/2), dir(0));