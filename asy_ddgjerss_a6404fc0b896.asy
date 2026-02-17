unitsize(1.6mm);
draw((0,0)--(10,0),EndArrow);

draw((0,0)--(0,10),EndArrow);

real f(real x)
{
return 5/x;
}
draw(graph(f,.55,9));
label("1",(5,0),3S);

real x2 = 15;

unitsize(2mm);
draw((0+x2,0)--(10+x2,0),EndArrow);
draw((0+x2,0)--(0+x2,10),EndArrow);


real f(real x)
{
return (0.2*(x-x2)^2);
}
draw(graph(f,0+x2,7+x2));
label("2",(5+x2,0),3S);

unitsize(2mm);
draw((0+2x2,0)--(10+2x2,0),EndArrow);
draw((0+2x2,0)--(0+2x2,10),EndArrow);


real f(real x)
{
return (x-2x2);
}
draw(graph(f,0+2x2,8+2x2));
label("3",(5+2x2,0),3S);

unitsize(2mm);
draw((0+3x2,0)--(10+3x2,0),EndArrow);
draw((0+3x2,0)--(0+3x2,10),EndArrow);


real f(real x)
{
return 2.5*((x-3x2)^0.5);
}
draw(graph(f,0+3x2,9+3x2));
label("4",(5+3x2,0),3S);