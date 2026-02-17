unitsize(3cm);
draw(box((0,0),(1,1)));
label("ice",(.5,.5));
fill(box((1.5,.1),(2.3,.9)), cyan);
draw(box((1.5,.1),(2.3,.9)));
label("water",(1.9,.6));
label("melt volume",(1.9,.4));
draw((1.05,.5)--(1.45,.5), arrow = Arrow(6));
label("melting",(1.25,.5),N);