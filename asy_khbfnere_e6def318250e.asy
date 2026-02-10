draw(unitcircle);
label("bag",(1,0),E);
draw((0,-.03)--(0,-1.2), arrow = Arrow(6), deepred);
label("$F_{\rm gravity}$", (0,-1.20),S,deepred);
draw(shift(0,1)*((0,0.03)--(0,1.2)) , arrow = Arrow(6), deepblue);
label("$F_{\rm spring}$",(0,2.2),N, deepblue);