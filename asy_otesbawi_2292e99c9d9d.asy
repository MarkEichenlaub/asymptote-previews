unitsize(10cm);

//dot((0,0),black+8);
//draw((.02,0)--(.55,0), arrow = Arrow(6));
//draw((.55,-.03)--(.02,-.03), arrow = Arrow(6), red);
//label("clay ball",(0,-.1));

dot((0,-.3), black+8);
label("bouncy ball",(0,-.4));
draw((.02,-.3)--(.55,-.3), arrow = Arrow(6));
draw((.55,-.33)--(-.2,-.33), arrow = Arrow(6), red);
draw((-.02,-.3)--(-.2,-.3), arrow = Arrow(6), blue);

//label("$p$",(.3,0),N);
//label("$\Delta p$",(.3,-.03),S,red);

label("$p$",(.3,-.3),N);
label("$\Delta p$",(.3,-.33),S,red);

label("$p_{\rm final}$",(-.1,-.3),N,blue);