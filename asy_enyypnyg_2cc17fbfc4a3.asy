size(4cm);
defaultpen(fontsize(10pt));

xaxis(0, 1.1, EndArrow(TeXHead));
yaxis("$T$", 0, 1, EndArrow(TeXHead));
label("top of rope", (1, 0), S);
draw((1, -0.03)--(1, 0.03));

draw((0,0)..(.5,.6)..{1,0}(1,.8));