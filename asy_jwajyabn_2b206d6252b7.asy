unitsize(0.9cm);
pair A = (0,0);
defaultpen(fontsize(6pt));
draw(A--A+(6.5,0), EndArrow);
label("A", A+(3,0), S);

draw(A+(0,1)--A+(6,1),dotted);
draw(A+(0,2)--A+(6,2),dotted);
draw(A+(0,3)--A+(6,3),dotted);
draw(A+(0,4)--A+(6,4),dotted);

draw(A--A+(0,4.5), EndArrow);
label(rotate(90)*"Energy (J)", A+(0,2),W);
label("$KE$", A+(1,4), N);
label("$GPE$", A+(3.8,4), N);

filldraw(A+(1-0.25,0)--A+(1+0.25,0)--A+(1+0.25,0)--A+(1-0.25,0)--cycle,blue);
filldraw(A+(3.8-0.25,0)--A+(3.8+0.25,0)--A+(3.8+0.25,4)--A+(3.8-0.25,4)--cycle,blue);