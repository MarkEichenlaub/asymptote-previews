size(300);
pen dp=black+1;
int gridsize = 22;
for (int i=-2; i<=(gridsize-1); ++i) {
   draw((i,-2)--(i,(gridsize-1)), mediumgray);
   draw((-2,i)--((gridsize-1),i), mediumgray); }
int graphsize = 21;
draw((-1,0)--(graphsize,0), black+1bp, EndArrow(8));
draw((0,-1)--(0, graphsize), black+1bp, EndArrow(8));
label("Age of Sample (yrs)", ((graphsize/2), -1), S);
label(rotate(90)*"Percent of Carbon-14 Atoms Remaining", (-1, (graphsize/2)), W);
label("$0$", (-1,-1),NE, p=fontsize(8pt));
for (int i=1; i<(graphsize/2); ++i){
    label("$"+string(5000*i)+"$",(2*i,0),S, p=fontsize(8pt));
    label("$"+string(10*i)+"$",(0,2*i), W, p=fontsize(8pt));
}

real k = -0.0001216;

real f(real x) 
{ 
//return 0.05*(2.718281828459045)^(k*x/2500);
return 20*(2.718281828459045)^(k*x*2500);
}

real f2(real x) 
{ 
return -1.8*x + 13.2;
}

draw(graph(f2,0, 7.3333), deepred+1);
draw(graph(f,0, 20), black+1.25);
dot((4,6),black+5);