import geometry;
size(7cm);
defaultpen(fontsize(10pt));

pair ell(real t){ return (5*cos(t), 4*sin(t)); }

ellipse el = ellipse(origin, 5, 4);
pair F = el.F1;

real t = 4*pi/5;
pair pt = ell(t);

real dt = 0.01;
pair v = 0.3*(ell(t + dt) - ell(t))/dt;

fill(F--pt--(pt+v)--cycle, rgb(0.4, 0.7, 0.4)+white);

draw("$r$", F--pt);
draw(graph(ell, 0, 2*pi));
draw(Label("$v \Delta t$", Relative(1), align=dir(135)), shift(pt)*((0, 0)--v), Arrow(TeXHead));

draw("$\theta$", arc(pt, 0.4, degrees(v), degrees(F - pt)), rgb(0, 0.6, 1));

dot(F);
dot(pt);