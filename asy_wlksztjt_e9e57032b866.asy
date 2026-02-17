import graph;
size(5cm);
defaultpen(fontsize(10pt));

real tau(real R){
return R;
}

draw(graph(tau,0,.5));

xaxis("$0.5$", 0, 0.5, Arrow(TeXHead));
yaxis("$0.5$", 0, 0.5, Arrow(TeXHead));

label("$R/L$",(.25,0),S);
label("$\frac{\tau}{MgL\sin\theta}$",(0,.25),W);