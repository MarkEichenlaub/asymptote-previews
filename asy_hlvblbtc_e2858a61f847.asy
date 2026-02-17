size(5cm, 4cm, IgnoreAspect);
defaultpen(fontsize(10pt));

draw(graph(new real(real t){ return 4 - 2*t; }, 0, 3));

xaxis(Label("Time (s)", align=dir(90)), 0, 3, RightTicks(beginlabel=false, Step=1, Size=3));
yaxis(Label("Angular Velocity (rad/s)", Relative(0.5)), -3, 5, LeftTicks(Step=2, Size=3));