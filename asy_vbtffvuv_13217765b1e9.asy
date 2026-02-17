draw((0,1)--(1,1), linewidth(2pt));

draw(shift(.8,.75)*scale(.15)*unitcircle);
label("$A$",(.65,.75),W);
draw((.8,.75)--(.8,1));

draw(shift(.5,.4)*scale(.15)*unitcircle);
label("$B$",(.65,.4),E);
draw((.65,.75)--(.65,.4));
draw((.35,.4)--(.35,1));

draw(shift(.35,0)*scale(.15)*unitcircle);
label("$C$",(.2,0),W);
draw((.5,0)--(.5,.4));
draw((.35,0)--(.35,-.25));
dot((.35,-.25));
label("$m_2$",(.35,-.25),S);
draw((.2,0)--(.2,1));

draw((.95,.75)--(.95,.5));
dot((.95,.5));
label("$m_1$",(.95,.5),S);