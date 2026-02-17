//this is a template for creating scatter plots of data from physics experiments
  //-------ENTERING DATA, LABELS, AND EQUATION FOR CURVE------------
  bool plotPoints = true;
  bool plotCurve = false;
  
  real[] xdata = {30, 35, 45, 63, 70, 89}; 
  real x_transform(real x){ 
  return x/4; //change to, e.g. "return x^2;" to plot x^2 on the horizontal axis. 
  }
  
  real[] ydata = {207, 177, 138, 98, 89, 70}; 
  real y_transform(real y){
  return 1/y;
  }
  
  string xAxisLabel = "$V \;\;(\mathrm{cm}^3)$";
  string yAxisLabel = "$P^{-1} \;\;(\mathrm{kPa}^{-1})$";
  
  //min and max x values for the curve to draw
  real xmin = 0; 
  real xmax = 25;
  
  //min for the y axis
  real ymin = 0;
  
  //define what curve to draw
  real curve(real x){
  return x^2;  //change to the equation for your curve
  }
  
  //-------------AESTHETIC THINGS------------
  //size of entire image in cm
  real xsize = 10;
  real ysize = 8;
  
  //style of graph
  pen graphpen = deepred+linewidth(1.0 pt);
  
  //style of dots
  dotfactor = 10; //size
  pen dotpen = blue; 
  filltype dotfill = Fill; //can change to "NoFill" for hollow dots
  
  //axes
  real xTickSpacing = 5.0; //must be entered as a decimal
  real xSubtickSpacing = 1.0; //set equal to xTickSpacing if you don't want little ticks
  real yTickSpacing = 0.002;
  real ySubtickSpacing = 0.0005;
  bool ticksGoThroughAxes = false;
  bool xAxisArrow = false; 
  bool yAxisArrow = false;
  
  //gridlines
  bool bigGrid = true; //gridlines for the labeled tick marks
  bool smallGrid = true; //gridlines for the smaller subticks
  
  //--------BELOW HERE YOU USUALLY DON'T NEED TO CHANGE ANYTHING------------------------
  size(xsize*72/2.54, ysize*72/2.54, IgnoreAspect);
  import graph; 
  
  real[] x_to_plot = map(x_transform, xdata);
  real[] y_to_plot = map(y_transform, ydata);
  
  if(plotPoints){
  for(int i = 0; i< xdata.length; ++i){
  dot((x_to_plot[i], y_to_plot[i]), filltype = dotfill, p = dotpen);
  }}
  
  if(plotCurve){
  draw(graph(curve, xmin, xmax), p = graphpen);}
  
  real xlabel_loc = 0.5; //what fraction down the axis you want the label
  real ylabel_loc = 0.5;
  
  arrowbar xarrow = None;
  if(xAxisArrow){
  xarrow = Arrow;
  }
  
  arrowbar yarrow = None;
  if(yAxisArrow){
  yarrow = Arrow;
  }
  
  if(ticksGoThroughAxes){
  xaxis(xmin = xmin, xmax = xmax, L = xAxisLabel, axis = YZero, arrow = xarrow, Ticks(xTickSpacing, xSubtickSpacing));
  yaxis(ymin = ymin, L = yAxisLabel, axis = XZero, arrow = yarrow, Ticks(yTickSpacing, ySubtickSpacing));
  }
  else{
  xaxis(xmin = xmin, xmax = xmax, L = xAxisLabel, axis = YZero, arrow = xarrow, LeftTicks(xTickSpacing, xSubtickSpacing));
  yaxis(ymin = ymin, L = yAxisLabel, axis = XZero, arrow = yarrow, RightTicks(yTickSpacing, ySubtickSpacing));
  }
  
  if(bigGrid){
  xaxis(LeftRight, invisible, Ticks(Step = xTickSpacing, extend = true, gray) );
  yaxis(BottomTop, invisible, Ticks(Step = yTickSpacing, extend = true, gray) );
  }
  
  if(smallGrid){
  xaxis(LeftRight, invisible, Ticks(Step = xSubtickSpacing, extend = true, lightgray) );
  yaxis(BottomTop, invisible, Ticks(Step = ySubtickSpacing, extend = true, lightgray) );
  }