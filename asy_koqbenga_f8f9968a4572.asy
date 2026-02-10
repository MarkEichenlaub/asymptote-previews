unitsize(.3cm);
draw(scale(1)*unitcircle);
draw(shift(15,0)*scale(1.3)*unitcircle);
draw((0,0)--(2,0),arrow = Arrow(6));
label("$-v_i-2v_{\mathrm{boost}}$",(1,0),NE);
label("ball 1",(0,-1.3),S);
label("ball 2",(15,-1.3),S);
draw((15,0)--(25,0),arrow = Arrow(6));
label("$-2v_{\mathrm{boost}}$",(20,0),N);