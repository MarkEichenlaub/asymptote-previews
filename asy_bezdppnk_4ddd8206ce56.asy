unitsize(0.7cm);
pair P1, P2, O;
draw((0,-5)--(0,5), Arrows);
draw((-7,0)--(7,0), Arrows);
O = (0,0);
P1 = (2, 3*sqrt(21)/5 );
P2 = (1, -6*sqrt(6)/5  );
draw(ellipse(O,5,3));
dot(P1);
dot(P2);
label("Meeting point 1", P1, NE);
label("Meeting point 2", P2+(-.4,0), SE);
pair f(real t) {
    return (5*cos(t),3*sin(t));
}
pair g(real t) {
    return (5*cos(t),-3*sin(t));
}
path ellarc = graph(f, 2.6*pi/7, 21.9*pi/14, operator ..); 
draw(ellarc,heavyred, Arrow);
path ellarc = graph(g, -2.6*pi/7, (2*pi - 21.9*pi/14), operator ..); 
draw(ellarc,heavygreen, Arrow);
label("$d_A$", (-3,2.1), 2*NW, heavyred);
label("$t_A = 20 \;\mathrm{s}$", (-3,2.1), 6*W, heavyred);
label("$d_B$", (3.5,-1.7),2*SE, heavygreen);
label("$t_B = 20 \;\mathrm{s}$", (3.5,-2.2),2*SE, heavygreen);