unitsize(0.3cm);
draw(scale(1)*unitcircle);
draw(shift(15,0)*scale(1.3)*unitcircle);
draw((0,0)--(-7,0),arrow = Arrow(6));
label("$-v_i-v_{\mathrm{boost}}$",(-4.5,0),N);
label("ball 1",(0,-1.3),S);
label("ball 2",(15,-1.3),S);
draw((15,0)--(20,0),arrow = Arrow(6));
label("$-v_{\mathrm{boost}}$",(18.5,0),N);