unitsize(1cm);
defaultpen(fontsize(10pt));

int N = 10;
real eps = 0.25;
for(int i = 0; i < N + 1; ++i)
    dot("$m$", (i, 0), dir(-90));

draw("$v$", shift(N, 0.3)*((eps, 0)--(-eps, 0)), dir(90), Arrow(TeXHead));