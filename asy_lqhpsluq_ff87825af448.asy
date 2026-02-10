import graph;

real pi = 4 * atan(1);
real eps = 0.1;
real xmax = 1 + eps, ymax = xmax;

picture[] picarray;
for(int i = 0; i < 5; ++i){
    picture p = new picture;
    size(p, 3cm);
    xaxis(p, 0, xmax, EndArrow(TeXHead));
    yaxis(p, 0, ymax, EndArrow(TeXHead));
    label(p, "$t$", (xmax, 0), dir(0));
    label(p, "$v$", (0, ymax), dir(0));
    picarray.push(p);
}

draw(picarray[0], graph(
    new real(real t){ return 0.4 * sin(3*pi*t); },
    0, 1));

draw(picarray[1], graph(
    new real(real t){ return (1 - exp(-5*t)); },
    0, 1));

draw(picarray[2], graph(
    new real(real t){ return 3*t*(1 - t); },
    0, 1));

draw(picarray[3], graph(
    new real(real t){ return t^3; },
    0, 1));

draw(picarray[3], (.2-.3,.2^3 - 3*.2^2*.3)--(.2+.3,.2^3 + 3*.2^2*.3), red );
draw(picarray[3], (.8 - .2, .8^3 - 3*.8^2*.2)--(.8+.2, .8^3 + 3*.8^2*.2),red);

draw(picarray[4], graph(
    new real(real t){ return t; },
    0, 1));

label(picarray[0], "(A)", (eps, ymax + 0.3));
label(picarray[1], "(B)", (eps, ymax + 0.3));
label(picarray[2], "(C)", (eps, ymax + 0.3));
label(picarray[3], "(D)", (eps, ymax + 0.3));
label(picarray[4], "(E)", (eps, ymax + 0.3));

for(int i = 0; i < 5; ++i)
     add(picarray[i].fit(), (i, 0));