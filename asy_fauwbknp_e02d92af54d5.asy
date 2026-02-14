unitsize(2mm);
  Label Lx= Label("distance", position=MidPoint, S);
  Label Ly = Label("speed", position=MidPoint, W);
  draw((0,0)--(10,0), EndArrow, L=Lx);
  draw((0,0)--(0,10), EndArrow, L=rotate(90)*Ly);

  real f(real x)
  {
  return 4.5/(x)+1;
  }
  draw(graph(f,.55,9));
  label("A",(5,0),6S);

  real x2 = 15;

  unitsize(2mm);
  Label Lx= Label("distance", position=MidPoint, S);
  Label Ly = Label("speed", position=MidPoint, W);
  draw((0+x2,0)--(10+x2,0),EndArrow, L=Lx);
  draw((0+x2,0)--(0+x2,10),EndArrow, L=rotate(90)*Ly);

  real f(real x)
  {
  return (0.25*(x-x2)^2);
  }
  draw(graph(f,0+x2,6+x2));
  label("B",(5+x2,0),6S);

  unitsize(2mm);
  Label Lx= Label("distance", position=MidPoint, S);
  Label Ly = Label("speed", position=MidPoint, W);
  draw((0+2x2,0)--(10+2x2,0),EndArrow, L=Lx);
  draw((0+2x2,0)--(0+2x2,10),EndArrow, L=rotate(90)*Ly);

  real f(real x)
  {
  return ((6*(x-2x2)^2+6*(x-2x2))/((x-2x2)^2+1));
  }
  draw(graph(f,0+2x2,8+2x2));
  label("C",(5+2x2,0),6S);