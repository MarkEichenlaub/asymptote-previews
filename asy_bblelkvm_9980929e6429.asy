import graph;
size(5cm);
defaultpen(fontsize(10pt));

real I(real R){
return 1/12*(1 + 12*R*R);
}

draw(graph(I,0,.5));

xaxis("$0.5$", 0, 0.5, Arrow(TeXHead));
yaxis("$0.5$", 0, 0.5, Arrow(TeXHead));

label("$R/L$",(.25,0),S);
label("$\frac{I}{ML^2}$",(0,.25),W);