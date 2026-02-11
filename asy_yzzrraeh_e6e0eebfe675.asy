unitsize(2mm);
defaultpen(fontsize(10pt));
pen dp=black+4;

//User entries
string xlabel = "Mass (g)";
string ylabel = "Distance (cm)";
int xgrid = 24;
real xmax = 480;
int ygrid = 20;
real ymax = 80;

real xscale = xmax/xgrid;
real yscale = ymax/ygrid;

//Gridlines
add(grid(xgrid,ygrid,lightgray+linetype("4 4")));

//Axis labels
for (real i=1; i<=(xgrid/3); ++i){
   // label("$"+string(3*i*xscale)+"$",((3*i),0),S);
}

for (real i=1; i<=(ygrid/4); ++i){
    //label("$"+string(4*i*yscale)+"$",(0,(4*i)), W);
}
//label("$0$", (0,0),SW);
//label(xlabel, ((xgrid/2), -2.5));
//label(rotate(90)*ylabel, (-3, (ygrid/2)));

//Axes
draw((0,0)--((xgrid+1),0), black+1bp, EndArrow(8));
draw((0,0)--(0,(ygrid+1)), black+1bp, EndArrow(8));

//Data

real f(real x) {   
  return ((250/(x^2*xscale))/yscale);
}
draw(graph(f,(7.8/xscale),xgrid),red);