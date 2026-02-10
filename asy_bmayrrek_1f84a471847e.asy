real theta = 20;

pair v = dir(-theta);
pair O = (0,0);
pair g = (0,-1);

//g_parallel = v*Cos(90-theta);
//g_perp = v*Sin(90-theta);

dot(O);

draw("$\vec{v}$",O--v, arrow = Arrow(6));
draw("$\vec{g}$",O--g, arrow = Arrow(6), blue);