unitsize(15);
real n = 15; //width and height of the grid
real b = 8; //horizontal offset of the grid (to avoid overlapping labels for the rows)
real y = -5; //vertical offset of the grid (to avoid overlapping labels of the columns)
//box 1
label("A", (b + 1*n/8, y + 5*n/6));
fill(shift(b,y+2n/3)*box((0,0),(n/4,n/3)), paleyellow);
//box 2
label("B", (b + 3*n/8, y + 5*n/6));
fill(shift(b+n/4,y+2n/3)*box((0,0),(n/4,n/3)), palegreen);
//box 3
label("B", (b + 5*n/8, y + 5*n/6));
fill(shift(b+2n/4,y+2n/3)*box((0,0),(n/4,n/3)), palegreen);
//box 4
label("C", (b + 7*n/8, y + 5*n/6));
fill(shift(b+3n/4,y+n/3)*box((0,0),(n/4,n/3)), palered);
//box 5
label("B", (b + 1*n/8, y + 3*n/6));
fill(shift(b,y+n/3)*box((0,0),(n/4,n/3)), palegreen);
//box 6
label("A", (b + 3*n/8, y + 3*n/6));
fill(shift(b+n/4,y+n/3)*box((0,0),(n/4,n/3)), paleyellow);
//box 7
label("B", (b + 5*n/8, y + 3*n/6));
fill(shift(b+n/2,y+n/3)*box((0,0),(n/4,n/3)), palegreen);
//box 8
label("C", (b + 7*n/8, y + 3*n/6));
fill(shift(b+3n/4,y+2n/3)*box((0,0),(n/4,n/3)), palered);
//box 9
label("B", (b + 1*n/8, y + 1*n/6));
fill(shift(b,y)*box((0,0),(n/4,n/3)), palegreen);
//box 10
label("A", (b + 3*n/8, y + 1*n/6));
fill(shift(b+n/4,y)*box((0,0),(n/4,n/3)), paleyellow);
//box 11
label("B", (b + 5*n/8, y + 1*n/6));
fill(shift(b+2n/4,y)*box((0,0),(n/4,n/3)), palegreen);
//box 12
label("B", (b + 7*n/8, y + 1*n/6));
fill(shift(b+3n/4,y)*box((0,0),(n/4,n/3)), palegreen);
draw((n/4+b,0+ y)--(n/4+b,n+ y));
draw((2*n/4+b,0+ y)--(2*n/4+b,n+ y));
draw((3*n/4+b,0+ y)--(3*n/4+b,n+ y));
draw((0+b,1*n/3+ y)--(n+b,1*n/3+ y));
draw((0+b,2*n/3+ y)--(n+b,2*n/3+ y));
defaultpen(fontsize(12pt));
label("Hypothesis a",(b/2,5*n/6+ y));
label("Hypothesis b",(b/2,3*n/6+ y));
label("Hypothesis c",(b/2,1*n/6+ y));
label("E1", (b + 1*n/8, n - 4));
label("E2", (b + 3*n/8, n - 4));
label("E3", (b + 5*n/8, n - 4));
label("E4", (b + 7*n/8, n - 4));
draw(box((0+b,0 + y), (n+b,n+ y)), heavyred+linewidth(3));