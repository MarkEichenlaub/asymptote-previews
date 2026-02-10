pair sun = (0,0);
pair earth = (1,0);
pair sat = (.5,sqrt(3)/2);

real sun_mass = 1;
real earth_mass = 0.3;

real com_value = earth_mass / (earth_mass + sun_mass);
pair com = (com_value,0);

dot(sun);
dot(earth);
dot(sat);

draw(sun--earth,dotted);
//label("sun",sun,S);
draw(sun--sat,dotted);
//label("earth",earth,S);
draw(sat--earth,dotted);
//label("L4",sat,S);

dot(com);
label("$B$",com,S);

real factor = 1 - com_value;

draw("$a_{\mathrm{sun}}$",shift(sat)*scale(factor)*(sun--(sun-sat)),arrow = Arrow(6),red);
//draw(shift(sat)*scale(.12)*(sun--(earth-sat)),arrow = Arrow(6),red);
//label("$a_{\mathrm{Earth}}$",sat+(0.05,0),SE,red);

//draw("$a_c$",sat--(sat + (sat-com)*.4),arrow = Arrow(6),red);
draw(com--sat,dotted+red);