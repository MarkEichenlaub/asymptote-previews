real theta = 45;

pair v = dir(-theta);
pair O = (0,0);
pair g = (0,-1);

pair g_parallel = Cos(90-theta)*v;
pair g_perp = Sin(90-theta)*(rotate(-90)*v);

dot(O);

draw(O--v, arrow = Arrow(6));
label("$\vec{v}$",.9*v,NE);
draw("$\vec{g}$",O--g, arrow = Arrow(6), blue);

//draw(O--g_parallel, arrow = Arrow(6), blue);
//label("$\vec{g}_{\parallel}$",g_parallel/2,N,blue);
//draw(shift(g_parallel)*(O--g_perp), arrow = Arrow(6), blue+dotted);
//label("$g_{\perp}$",g_parallel + g_perp/2,E, blue);

draw((0,0)--(1,0), dashed);
draw(arc((0,0),.5,0,-theta));
label("$45^\circ$",dir(-theta/2)*.5,E);

draw((0,v.y)--v, dotted);
draw((v.x,0)--v,dotted);
label("$v_x$",(v.x/2,v.y),S);
label("$v_y$",(v.x,v.y/2),E);