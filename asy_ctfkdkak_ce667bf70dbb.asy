unitsize(8cm);
real x0 = 2.8, x1 = 4.2;           // show a bit before 3 cm and after 4 cm
real cml1 = 0.1, cml2 = 0.15, cml3 = 0.25;

// Background
filldraw((x0,.3)--(x0,1)--(x1,1)--(x1,.3)--cycle, paleyellow);

// Draw cm and mm ticks (2.8–4.2 cm, i.e. 28–42 mm)
for (int i = 29; i <= 41; ++i) {
  real x = i/10.0;
  if (i % 10 == 0) {
    // main cm ticks (shorter than full height)
    draw((x,1)--(x,1-cml3));
    label(format("%.1f cm", x), (x,0.65), fontsize(12pt));  // reduced font
  } else if (i % 5 == 0) {
    draw((x,1)--(x,1-cml2));
    label(format("%.1f", x), (x,0.76), fontsize(10pt));  // moved up
  } else {
    draw((x,1)--(x,1-cml1));
    label(format("%.1f", x), (x,0.82), fontsize(10pt));  // moved up
  }
}