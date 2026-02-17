unitsize(2.25mm);
defaultpen(fontsize(10pt));
pen dp=black+3;

//User entries
string xlabel = "$EPE$ (Joules)";
string ylabel = "$\Delta l^2$ (cm)";
real xgrid = 25;
real xmax = .04;
real ygrid = 20;
real ymax = 5;

real xscale = xmax/xgrid;
real yscale = ymax/ygrid;

//Gridlines
for (real i=0; i<=xgrid; ++i) {
   draw((i,0)--(i,ygrid), mediumgray);
}
for (real i=0; i<=ygrid; ++i) {
   draw((0,i)--(xgrid,i), mediumgray);
} 
//Axis labels
for (real i=1; i<=(xgrid/5); ++i){
    label("$"+string(5*i*xscale)+"$",((5*i),0),S, p=fontsize(8pt));
    draw((5*i,0)--(5*i,ygrid), mediumgray+1.5bp); 
}
for (real i=1; i<=(ygrid/5); ++i){
    label("$"+string(5*i*yscale)+"$",(0,(5*i)), W, p=fontsize(8pt));
    draw((0,5*i)--(xgrid,5*i), mediumgray+1.5bp);
}

//Axes
draw((0,0)--((xgrid+1),0), black+1bp, EndArrow(8));
draw((0,0)--(0,(ygrid+1)), black+1bp, EndArrow(8));

label("$0$", (0,0),SW, p=fontsize(8pt));
label(xlabel, ((xgrid/2), -3));
label(rotate(90)*ylabel, (-3, (ygrid/2)));

real d = 0.4;

//Data
dot(((0.001*0.01*0*9.8*((2.54*5/8)-d)/xscale),((0)/yscale)),dp);
dot(((0.001*0.01*50*9.8*((2.54*6/16)-d)/xscale),((2.54*6/16)^2/yscale)-d/yscale),dp);
dot(((0.001*0.01*70*9.8*((2.54*7/16)-d)/xscale),((2.54*7/16)^2/yscale)-d/yscale),dp);
dot(((0.001*0.01*90*9.8*((2.54*8/16)-d)/xscale),((2.54*8/16)^2/yscale)-d/yscale),dp);
dot(((0.001*0.01*110*9.8*((2.54*9/16)-d)/xscale),((2.54*9/16)^2/yscale)-d/yscale),dp);
dot(((0.001*0.01*130*9.8*((2.54*11/16)-d)/xscale),((2.54*11/16)^2/yscale)-d/yscale),dp);
dot(((0.001*0.01*150*9.8*((2.54*12/16)-d)/xscale),((2.54*12/16)^2/yscale)-d/yscale),dp);
dot(((0.001*0.01*170*9.8*((2.54*13/16)-d)/xscale),((2.54*13.5/16)^2/yscale)-d/yscale),dp);
dot(((0.001*0.01*190*9.8*((2.54*27/32)-d)/xscale),((2.54*28/32)^2/yscale)-d/yscale),dp);

draw((0,0)--(.033/xscale, 5/yscale));