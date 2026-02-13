unitsize(1cm);
defaultpen(fontsize(10pt));

int N = 9;
real eps = 0.25;
for(int i = 0; i < N; ++i)
    dot("$m$", (i, 0), dir(-90));
dot((10 + eps, 0), linewidth(0)); // to keep things aligned

dot("$2m$", (N, 0), dir(-90));
draw("$v/2$", shift(N, 0.3)*((eps, 0)--(-eps, 0)), dir(90), Arrow(TeXHead));