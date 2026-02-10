import graph;
size(150,IgnoreAspect);
real f(real x) {return 6.4x;}
bool3 branch(real x)
{
  return x != 0;
}
draw(graph(f,0,1,branch));
axes("Distance","Speed",black);