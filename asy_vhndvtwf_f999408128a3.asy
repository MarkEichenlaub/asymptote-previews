unitsize(15);

real n = 15;

real b = 8;

real y = -5;

draw(box((0+b,0 + y), (n+b,n+ y)), heavyred+linewidth(3));

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


//box 1
label("cloud", (b + 1*n/8, y + 5*n/6));

//box 2
label("cloud", (b + 3*n/8, y + 5*n/6));

//box 3
//label("A", (b + 5*n/8, y + 5*n/6));

//box 4
//label("B", (b + 7*n/8, y + 5*n/6));

//box 5
label("cloud", (b + 1*n/8, y + 3*n/6));

//box 6
//label("cloud", (b + 3*n/8, y + 3*n/6));

//box 7
//label("A", (b + 5*n/8, y + 3*n/6));

//box 8
//label("A", (b + 7*n/8, y + 3*n/6));

//box 9
label("cloud", (b + 1*n/8, y + 1*n/6));

//box 10
label("cloud", (b + 3*n/8, y + 1*n/6));

//box 11
label("cloud", (b + 5*n/8, y + 1*n/6));

//box 12
label("cloud", (b + 7*n/8, y + 1*n/6));