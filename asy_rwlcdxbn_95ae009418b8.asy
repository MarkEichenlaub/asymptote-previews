//TeXeR source: https://artofproblemsolving.com/texer/rwlcdxbn

size(4cm);
defaultpen(fontsize(10pt));
DefaultHead = TeXHead;

real top = 0.25, middle = 1, bottom = 1, up = 0.12, h = 2, eps = 0.05;
draw((-top/2, up)..(-top/2, 0){down}..{down}(-middle/2, -h/2)..(-bottom/2, -h));
draw((top/2, up)..(top/2, 0){down}..{down}(middle/2, -h/2)..(bottom/2, -h));
draw((bottom/2, -h)--(-bottom/2, -h));

draw(scale(top - eps)*shift(-1/2, -1/2)*unitsquare);
draw("$F$", (0, 0.8)--(0, (top - eps)/2), Arrow(), Margin);