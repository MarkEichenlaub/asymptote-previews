//TeXeR source: https://artofproblemsolving.com/texer/wnlrdxwb

size(4cm);
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
draw("$\theta$", shift(contact)*arc((0, 0), 0.15, 0, theta), rgb(0, 0.6, 1));
dot((0, 0));