label("L",(-5,0),S);
label("A",(0,0),S);
label("G",(3,0),S);

dot((-5,0),5+black);
dot((0,0),5+black);
dot((3,0),5+black);

draw(shift(-4.9,0)*((0,0)--(5/3,0)), arrow = Arrow(6));
draw(shift(2.9,0)*((0,0)--(-1,0)), arrow = Arrow(6));
label("$5 \;\mathrm{m/s}$",(-4,0),N);
label("$3 \;\mathrm{m/s}$",(2.5,0),N);