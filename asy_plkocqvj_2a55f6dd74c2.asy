unitsize(2cm);
draw(scale(.15)*unitcircle);
draw(shift(1,0)*scale(.05)*unitcircle);
draw(shift(2,0)*scale(.2)*unitcircle);
draw(shift(3,0)*scale(.05)*unitcircle);
draw(shift(4,0)*scale(.1)*unitcircle);
draw(shift(5,0)*scale(.15)*unitcircle);
draw((.15,0)--(.95,0));
draw((1.05,0)--(1.8,0));
draw((2.2,0)--(2.95,0));
draw((3.05,0)--(3.9,0));
draw((4.1,0)--(4.85,0));

label("$m_1$",(0,-.2),S);
label("$m_2$",(1,-.2),S);
label("$m_i$",(3,-.2),S);
label("$m_N$",(5,-.2),S);

label("$k_1$",(.5,0),N);
label("$k_2$",(1.5,0),N);
label("$k_{N-1}$",(4.5,0),N);