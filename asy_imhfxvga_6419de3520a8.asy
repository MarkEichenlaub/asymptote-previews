import olympiad; import cse5; import geometry; size(200);
defaultpen(fontsize(10pt));
defaultpen(0.8);
dotfactor = 4;

pair F = origin;
pair G = (5,0);
pair B = (0,2);
pair C = (5,2);
pair A = B+2*dir(35);
pair E = F+2*dir(35);
pair H = G+2*dir(35);
pair D = C+2*dir(35);

//dot(Label("$F$",F,SW));
//dot(Label("$G$",G,SE));
//dot(Label("$B$",B,NW));
//dot(Label("$C$",C,SE));
//dot(Label("$E$",E,SE));
//dot(Label("$A$",A,NW));
//dot(Label("$D$",D,NE));
//dot(Label("$H$",H,SE));

draw(F--G);
draw(B--F);
draw(B--C);
draw(C--G);
draw(F--E,dotted);
draw(B--A);
draw(C--D);
draw(G--H);
draw(E--H,dotted);
draw(A--E,dotted);
draw(A--D);
draw(H--D);

label("$v_x$",F--G,S);
label("$-v_z$",G--H,SE);
label("$v_y$",D--H,E);

draw(F--D,arrow = Arrow(6),red);
label("$\vec{v}$",(F+D)/2,N,red);