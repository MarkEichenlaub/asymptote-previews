import graph;

real f  = 1;

// Common plot parameters
real xmin = 0, xmax = 30000;
real ymin = 0;
real xTickSpacing = 5000, xSubtickSpacing = 1000;
real yTickSpacing = 50, ySubtickSpacing = 10;

// Function to create a single plot
picture makePlot(string plotLabel, real ymax, pair[] dataPoints, bool useFunctionInstead=false) {
    picture pic;
    size(pic, f*7cm, f*5.5cm, IgnoreAspect);

    // Axis setup
    axis xAxisType = BottomTop;
    axis yAxisType = LeftRight;

    Label xLabel = Label(s = "Temperature (K)", position = 1, p = fontsize(10));
    Label yLabel = Label(s = "Power (W)", position = 1, p = fontsize(10));

    Label tickFormat = Label("%." + string(0) + "f", filltype = Fill(p = white), p = fontsize(8));

    ticks xticks = LeftTicks(format = tickFormat, Step = xTickSpacing, step = xSubtickSpacing, size = 2, Size = 4);
    ticks yticks = RightTicks(format = tickFormat, Step = yTickSpacing, step = ySubtickSpacing, size = 2, Size = 4);

    dot(pic, (xmin,ymin), black+0);
    dot(pic, (xmax,ymax), black+0);

    // Draw axes
    xaxis(pic, xmin = xmin, xmax = xmax, L = xLabel, axis = xAxisType, ticks = xticks);
    yaxis(pic, ymin = ymin, ymax = ymax, L = yLabel, axis = yAxisType, ticks = yticks);

    // Draw grids
    xaxis(pic, LeftRight, invisible, Ticks(Step = xTickSpacing, extend = true, gray));
    yaxis(pic, BottomTop, invisible, Ticks(Step = yTickSpacing, extend = true, gray));
    xaxis(pic, LeftRight, invisible, Ticks(Step = xSubtickSpacing, extend = true, lightgray));
    yaxis(pic, BottomTop, invisible, Ticks(Step = ySubtickSpacing, extend = true, lightgray));

    // Add title
    label(pic, "Power For Bulb to Produce 1000 Lumens", ((xmax+xmin)/2, ymax), 2*N, fontsize(9));

    // Draw data
    if(useFunctionInstead) {
        real f(real x) { return (x-15000)^2/1000000 + 25; }
        draw(pic, graph(f, 0, 30000), blue+linewidth(1pt));
    } else {
        draw(pic, graph(dataPoints, operator ..), blue+linewidth(1pt));
    }

    // Add plot label
    label(pic, plotLabel, ((xmax+xmin)/2, ymin - (ymax-ymin)/5.5), 1.5*S, fontsize(11pt));

    return pic;
}

// Data for plot (a) - same as efficacy data
pair[] ptsA = {
(230.4897983895371, 0),
(791.6086456378271, 0),
(1312.4054004964564, 0.07325785554276365),
(1913.1198159472042, 0.8037779257734279),
(2311.7394199915234, 4.070230671429428),
(2627.8985287885203, 10.780044802324875),
(2864.3821517224674, 16.76406127020645),
(3178.967124780528, 25.830356602288553),
(3335.0487376642222, 32.17618211539626),
(3530.7259187503787, 39.247442029424235),
(3805.109886783318, 48.49464188411939),
(4079.8571169098477, 57.19803838469456),
(4393.473391051647, 67.71447599442999),
(4787.370587879152, 78.05037234364595),
(5143.730701701274, 84.57928195192831),
(5341.950717442632, 87.8439183871163),
(5540.776170006662, 90.20221589877096),
(5859.478113458863, 93.10540655082642),
(6179.027668462798, 94.73972270993522),
(6579.221408246055, 95.64969425440457),
(6900.224011624389, 95.10879699703338),
(7301.991887146569, 93.66228734031604),
(7865.290306956465, 90.40455288490648),
(8388.75098383484, 86.78391959798995),
(9073.74220500091, 81.3520615123812),
(9799.53986801477, 74.83295998062604),
(10766.78573590846, 66.86589574377913),
(11814.433613852394, 58.53702246170613),
(12861.476054973664, 51.114488103166444),
(13787.06786946782, 45.50354180541261),
(15194.829569534417, 38.084276805715334),
(16561.421565659628, 32.29605860628443),
(18128.170975358727, 26.872192286734887),
(20095.71956166374, 21.45195858812133),
(21982.13961373131, 17.481140642973884),
(23867.954228976207, 14.416661621359783),
(26715.80795543985, 11.179633105285484),
(30004.298601440943, 8.309136041654016)
};

// Data for plot (b) 
pair[] ptsB = {
(3162.02, 250),
(3593.79, 112.8),
(3918.02, 79.7),
(4348.90, 58.7),
(4562.31, 51.1),
(4830.35, 45.5),
(5204.84, 40.6),
(5580.28, 37.5),
(6010.55, 34.8),
(6549.50, 32.8),
(7035.79, 31.8),
(7308.11, 31.4),
(7581.41, 31.1),
(8016.07, 30.7),
(8452.34, 30.6),
(8999.47, 30.5),
(9438.33, 30.5),
(9989.93, 30.7),
(10757.21, 31.1),
(11475.09, 31.5),
(12410.47, 32.3),
(13404.72, 33.4),
(14730.26, 35.0),
(16157.26, 37.1),
(17582.35, 39.6),
(18855.07, 42.0),
(20788.41, 46.3),
(22645.57, 51.0),
(24793.69, 57.2),
(27484.79, 66.6),
(30075.00, 77.2)
};


// Data for plot (c)
pair[] ptsC = {
(2311.74, 250),
(2627.90, 92.8),
(2864.38, 59.7),
(3178.97, 38.7),
(3335.05, 31.1),
(3530.73, 25.5),
(3805.11, 20.6),
(4079.86, 17.5),
(4393.47, 14.8),
(4787.37, 12.8),
(5143.73, 11.8),
(5341.95, 11.4),
(5540.78, 11.1),
(5859.48, 10.7),
(6179.03, 10.6),
(6579.22, 10.5),
(6900.22, 10.5),
(7301.99, 10.7),
(7865.29, 11.1),
(8388.75, 11.5),
(9073.74, 12.3),
(9799.54, 13.4),
(10766.79, 15.0),
(11814.43, 17.1),
(12861.48, 19.6),
(13787.07, 22.0),
(15194.83, 26.3),
(16561.42, 31.0),
(18128.17, 37.2),
(20095.72, 46.6),
(21982.14, 57.2),
(23867.95, 69.4),
(26715.81, 89.5),
(30004.30, 120.3)
};

// Create all four plots
picture picA = makePlot("(a)", 100, ptsA);
picture picB = makePlot("(b)", 250, ptsB);
picture picC = makePlot("(c)", 250, ptsC);
picture picD = makePlot("(d)", 250, ptsC, true);  // Uses function instead

// Arrange in 2x2 grid
real plotWidth = 7cm;
real plotHeight = 5.5cm;
real hgap = 0.8cm;
real vgap = 0.8cm;

add(picA.fit(), (0, plotHeight + vgap));
add(picB.fit(), (plotWidth + hgap, plotHeight + vgap));
add(picC.fit(), (0, 0));
add(picD.fit(), (plotWidth + hgap, 0));