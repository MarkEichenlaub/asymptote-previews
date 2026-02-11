size(5cm, 4cm, IgnoreAspect);
defaultpen(fontsize(10pt));

fill((0, 0)--(0, 4)--(2, 0)--cycle, rgb(0.75, 0.9, 0.75));
fill((2, 0)--(3, 0)--(3, -2)--cycle, rgb(1, 0.8, 0.9));
draw(graph(new real(real t){ return 4 - 2*t; }, 0, 3));

xaxis(Label("Time (s)", align=dir(90)), 0, 3, RightTicks(beginlabel=false, Step=1, Size=3), above=true);
yaxis(Label("Angular Velocity (rad/s)", Relative(0.5)), -3, 5, LeftTicks(Step=2, Size=3), above=true);