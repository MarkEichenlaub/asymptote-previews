size(12cm);
defaultpen(fontsize(10pt));

real eps = 0.7, eps2 = 0.25;
picture[] P;
string[] labels = {"(A)", "(B)", "(C)", "(D)", "(E)"};
real[][] dots = {
    {6, 11, 15, 18, 20, 21},
    {3, 6, 9, 12, 15, 18, 21},
    {1, 3, 6, 10, 15, 21},
    {1, 4, 9, 16},
    {1, 5, 14}
};

// Draw the floor line
draw((-3, 0)--(35, 0), brown+1);

for(int i = 0; i < 5; ++i){
    P[i] = new picture;
    unitsize(P[i], 1cm);
    draw(P[i], shift(eps, 0)*((0, 0)--(0, 21)));  // Vertical strings
    for(int j = 0; j <= 21; ++j)
        draw(P[i], shift(-eps, 0)*((eps2, j)--(-eps2, j)));  // Horizontal ticks on strings
    for(int j = 0; j < dots[i].length; ++j)
        filldraw(P[i], shift(eps, dots[i][j])*scale(0.25)*unitcircle, gray(0.5));  // Dots on strings
    label(P[i], labels[i], (0, 0), 2*dir(-90));  // Labels below each string
}

for(int i = 0; i < 5; ++i)
    add(shift(8*i, 0)*P[i]);