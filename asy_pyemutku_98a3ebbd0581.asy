unitsize(20cm);

dot((0,1.1), 5+black);

filldraw(unitcircle, lightgray);

clip(box((-.2,.8),(.2,1.15)));

label("Earth $(\oplus)$",(0,.9));
label("stone",(0,1.1),E);

draw((0,1.09)--(0,1.02), arrow = Arrow(6),red);
label("$\vec{F}_{g; \oplus \to s} = \frac{Gm_\oplus m_s}{R_{\oplus,e}^2}$",(0,1.05),E,red+fontsize(14pt));