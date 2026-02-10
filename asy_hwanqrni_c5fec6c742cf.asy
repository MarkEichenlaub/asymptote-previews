defaultpen(fontsize(15pt));
pen dp=black+fontsize(10pt);

unitsize(5cm);
label("- C -", (0,0));
label(rotate(90)*" - ", (0,.08));
label(rotate(90)*" - ", (0,-.08));

label("H", (0.15,0));
label("H", (-0.15,0));
label("H", (0,0.15));
label("H", (0,-0.15));

label("+", (0.3,0));
label(rotate(90)*" - ", (0.45,0));
label("O", (0.45, 0.08));
label("O", (0.45, -0.08));

label("+", (0.6,0));
label(rotate(90)*" - ", (0.75,0));
label("O", (0.75, 0.08));
label("O", (0.75, -0.08));

label("+", (0.9,0));
label("A little bit of energy", (1.3,0), dp);

label("$\rightarrow$", (1.7,0));
//label("Combustion", (1,0.08));

real s = 0.1;

real deltax = 0.7;

//draw((1.15+deltax,-s/2)--(1.15+deltax,s/2)--(1.15+s+deltax,s/2)--(1.15+s+deltax,-s/2)--cycle);
label("C", (1.15+s/2+deltax,0));
label(rotate(90)*" - ", (1.2+deltax,0.08));
label(rotate(90)*" - ", (1.2+deltax,-0.08));
label("O", (1.2+deltax, 0.15));
label("O", (1.2+deltax, -0.15));

label("+", (1.35+deltax,0));

label("O", (1.55+deltax, 0.08));
label(rotate(45)*" - ", (1.5+deltax,0));
label(rotate(-45)*" - ", (1.6+deltax,0));
label("H", (1.45+deltax,-0.08));
label("H", (1.65+deltax,-0.08));

label("+", (1.8+deltax,0));

label("O", (2+deltax, 0.08));
label(rotate(45)*" - ", (1.95+deltax,0));
label(rotate(-45)*" - ", (2.05+deltax,0));
label("H", (1.9+deltax,-0.08));
label("H", (2.1+deltax,-0.08));

label("+", (2.3+deltax,0));

label("A lot of energy", (2.7+deltax,0), dp);