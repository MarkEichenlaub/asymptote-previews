size(5cm);
defaultpen(fontsize(10pt));

real d = 5, r = 1, sh = 3, ceil_h = 0.4;

fill(box((-r, d), (r + 2*sh, d + ceil_h)), gray(0.7));
draw((-r, d)--(r + 2*sh, d));

filldraw(circle((0, 0), r), gray(0.7)); draw((0, r)--(0, d)); label("A", (0, -r), 2*dir(-90));
currentpicture = shift(-sh)*currentpicture;
draw(circle((0, 0), r)); draw((0, r)--(0, d)); label("B", (0, -r), 2*dir(-90));
currentpicture = shift(-sh)*currentpicture;
dot((0, 0), linewidth(5)); draw((0, 0)--(0, d)); label("C", (0, -r), 2*dir(-90));