fill(unitcircle);

real theta = -30;

pair loc1 = dir(theta);
pair loc2 = dir(180+theta);

pair f1 = (0,.6);
pair f2 = (0,-.6);

draw(shift(0,-.02)*shift(loc1)*shift(-f1)*((0,0)--f1), arrow = Arrow(6), red);
draw(shift(0,.02)*shift(loc2)*shift(-f2)*((0,0)--f2), arrow = Arrow(6), red);