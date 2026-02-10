unitsize(1cm);

var length = 6;
draw((0,-0.1*length) .. (0,length), arrow = Arrow());
draw((-0.1*length,0) .. (length,0), arrow = Arrow());

//12
draw((0,0.66*length) .. (0.6*length,0.66*length), arrow = Arrow(Relative(0.5)));

//23
draw((0.6*length, 0.66*length) .. (0.64*length,0.5*length) .. (0.8*length,0.33*length), Arrow(Relative(0.5)));

//34
draw((0.8*length,0.33*length) .. (0,0.33*length), arrow = Arrow(Relative(0.5)));

//41
draw((0,0.33*length) .. (0,0.66*length), arrow = Arrow(Relative(0.5)));

//ticks
draw((0.6*length,0.1) .. (0.6*length, -0.1));
draw((0.8*length,0.1) .. (0.8*length, -0.1));

label("$V_a$",(0.6*length,-0.35));
label("$V_a + \mathrm{d} V$",(0.8*length,-0.35));

label("$P$",(-0.05*length,length));
label("$V$",(length,-0.05*length));

label("$1$",(-0.17,0.66*length));
label("$2$",(0.63*length,0.66*length));
label("$3$",(0.83*length,0.33*length));
label("$4$",(-0.17,0.33*length));

label("$T_c + \mathrm{d} T$",(0.3*length,0.70*length), red);
label("$T_c$",(0.4*length,0.29*length), blue);