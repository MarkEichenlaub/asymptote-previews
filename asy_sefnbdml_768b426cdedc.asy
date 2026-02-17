size(8cm);

// Parameters
real t = 0.2;  // tower width
real h = 0.6;  // tower/sheet height
real w = 1;    // distance between towers
real p = 0;  // probability of light passing through sheet

// Random seed for reproducibility (change for different patterns)
srand(42);

// Draw pillars/towers
draw(box((0,0),(t,h)));
draw(box((w,0),(w+t,h)));

// Draw ground
draw((-.3,0)--(w+t+.3,0),linewidth(2pt));

// Draw sheet
pen pn = linewidth(.3pt);
draw((t,h)--(w,h),pn);

// Light ray pen
pen raypen = linewidth(0.5pt) + orange;

// Function to draw a light ray from top
void drawRay(real x, real ystart) {
    // Check if ray hits left tower
    if (x >= 0 && x <= t) {
        draw((x,ystart)--(x,h), raypen);
        return;
    }
    
    // Check if ray hits right tower
    if (x >= w && x <= w+t) {
        draw((x,ystart)--(x,h), raypen);
        return;
    }
    
    // Check if ray hits the sheet
    if (x >= t && x <= w) {
        // Ray reaches the sheet
        draw((x,ystart)--(x,h), raypen);
        
        // Determine if ray passes through (probability p)
        if (unitrand() < p) {
            // Ray passes through to ground (solid line)
            draw((x,h)--(x,0), raypen);
        }
        // If not passing through, ray stops at sheet (already drawn to h)
    } else {
        // Ray goes straight to ground (outside tower/sheet area)
        draw((x,ystart)--(x,0), raypen);
    }
}

// Starting y-position for rays (above the scene)
real ystart = 1.0;

// Draw evenly spaced rays across the entire image
real xmin = -0.2;
real xmax = w + t + 0.2;
int num_rays = 30;  // Total number of rays

real ray_spacing = (xmax - xmin) / (num_rays - 1);

for (int i = 0; i < num_rays; ++i) {
    real x = xmin + i * ray_spacing;
    drawRay(x, ystart);
}

// Add label
label("Aluminum Foil", (w/2 + t/2, h), N, fontsize(18pt) + Helvetica());