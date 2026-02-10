real theta = 20;

pair v = dir(-theta);
pair O = (0,0);
pair g = (0,-1);

pair g_parallel = Cos(90-theta)*v;
pair g_perp = Sin(90-theta)*(rotate(-90)*v);

dot(O);

draw("$\vec{v}$",O--v, arrow = Arrow(6));
draw("$\vec{g}$",O--g, arrow = Arrow(6), blue);

draw(O--g_parallel, arrow = Arrow(6), blue);
label("$\vec{g}_{\parallel}$",g_parallel/2,N,blue);
draw(shift(g_parallel)*(O--g_perp), arrow = Arrow(6), blue+dotted);
label("$g_{\perp}$",g_parallel + g_perp/2,E, blue);