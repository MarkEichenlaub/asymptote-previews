//TeXeR source: https://artofproblemsolving.com/texer/kaxjinfo

size(10cm);
defaultpen(fontsize(10pt));

real r = 0.4;
draw(unitcircle);
draw(scale(r)*unitcircle);

dot(S);

real theta = aCos(r);
pair contact = r*dir(theta-90);
dot(contact);
draw(shift(contact)*((0, 0)--0.5*dir(theta)), Arrow(TeXHead));

draw(S--contact, dotted);
draw("$r$", contact--(0, 0));
draw("$R$", (0, 0)--S);
draw(shift(contact)*((0, 0)--0.3*dir(0)));
draw(shift(contact)*((0,0)--(-0.6)*dir(0)), dashed);
draw("$\theta$", shift(contact)*arc((0, 0), 0.15, 0, theta), rgb(0, 0.6, 1));
draw("$\theta$", shift(contact)*arc((0,0), 0.15, 180, theta+180), green);
draw("$\frac{\pi}{2}-\theta$", arc(S, 0.25, theta, 90), green);
dot((0, 0));
draw(rightanglemark((0,0), contact, S, 2));