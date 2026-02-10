import geometry;
size(5cm);

real a = 5, b = 4;
ellipse el = ellipse(origin, a, b);

draw(el);
dot(el.F1);

draw("$a$", origin--a*E, dotted);
draw("$b$", origin--b*N, dotted);