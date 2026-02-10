pair sun = (0,0);
pair earth = (1,0);
pair sat = (.5,sqrt(3)/2);

real sun_mass = 1;
real earth_mass = 0.1;

pair com = (earth_mass / (earth_mass + sun_mass),0);

dot(sun);
dot(earth);
dot(sat);

draw("$R$",sun--earth,dotted);
label("sun",sun,S);
draw("$R$",sun--sat,dotted);
label("earth",earth,S);
draw("$R$",sat--earth,dotted);
label("$L_4$",sat,S);