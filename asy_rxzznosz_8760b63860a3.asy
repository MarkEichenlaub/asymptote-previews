import graph;
size(150,IgnoreAspect);
real f(real x) {return 4;}
bool3 branch(real x)
{
  return x != 0;
}
draw(graph(f,0,1,branch));
axes("Distance","Rotational Speed",black);