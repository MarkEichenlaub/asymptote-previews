filldraw(unitcircle, lightgray);
  dot((0,0));

  draw((-1,-4)--(-1,0)--arc((0,0),1,180,0)--(1,0)--(1,-4), linewidth(2pt));

  filldraw(box((-1.5,-5),(-.5,-4)), lightgray);
  label("$m$",(-1,-4.5));
  filldraw(box((1.5,-5),(.5,-4)), lightgray);
  label("$m$",(1,-4.5));