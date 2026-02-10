defaultpen(fontsize(15pt));
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

label("$\rightarrow$", (1,0));
//label("Combustion", (1,0.08));

real s = 0.1;

//draw((1.15,-s/2)--(1.15,s/2)--(1.15+s,s/2)--(1.15+s,-s/2)--cycle);
label("C", (1.15+s/2,0));
label(rotate(90)*" - ", (1.2,0.08));
label(rotate(90)*" - ", (1.2,-0.08));
label("O", (1.2, 0.15));
label("O", (1.2, -0.15));

label("+", (1.35,0));

label("O", (1.55, 0.08));
label(rotate(45)*" - ", (1.5,0));
label(rotate(-45)*" - ", (1.6,0));
label("H", (1.45,-0.08));
label("H", (1.65,-0.08));

label("+", (1.8,0));

label("O", (2, 0.08));
label(rotate(45)*" - ", (1.95,0));
label(rotate(-45)*" - ", (2.05,0));
label("H", (1.9,-0.08));
label("H", (2.1,-0.08));