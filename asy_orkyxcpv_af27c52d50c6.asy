size(10cm);
defaultpen(fontsize(10pt));

real eps = 0.25;
for(int i = 0; i < 10; ++i){
    dot("$m$", (i, 0), dir(-90));
    draw("$v$", shift(i, 0.3)*((-eps, 0)--(eps, 0)), dir(90), Arrow(TeXHead));
}

dot("$m$", (10, 0), dir(-90));