size(6cm);

string s = "\textsf{A E F H Z}";

// Draw invisible box to fix the layout
path box = (0,0)--(10,0)--(10,3)--(0,3)--cycle;
draw(box, invisible);

label(s, (5, 3.2), fontsize(80pt));
label(rotate(180)*s, (5, 0.8), fontsize(80pt));