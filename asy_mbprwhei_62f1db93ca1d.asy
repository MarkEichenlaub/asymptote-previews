unitsize(2cm); 
real bridge = 0.3;

// lenses
path lens = yscale(0.3)*unitcircle;
filldraw(shift((-1-bridge/2,0))*lens,darkgray);
filldraw(shift((1+bridge/2,0))*lens,darkgray);

// bridge
draw( yscale(0.3)*arc((0,0), bridge/2, 0, 180),linewidth(2pt) );

//ear hooks
real len = 3.1;
real r = .50;
path hook = ((0,0)--(0,len)--xscale(.5)*arc((r,len),r,180,90) );
draw(shift((-2-bridge/2,0))*hook,linewidth(2pt));
draw(shift((2+bridge/2,0))*hook,linewidth(2pt));

//ground
draw((-3,-1)--(3,-1), linewidth(2pt));

// Add rays of light
import math;
srand(40); // Set seed for reproducibility (change for different random patterns)

real ray_start_y = 3.5;  // Height where rays start
real ray_spacing = 0.2;  // Spacing between rays
real left_lens_cx = -1 - bridge/2;   // Left lens center x
real right_lens_cx = 1 + bridge/2;   // Right lens center x
real lens_a = 1;          // Lens semi-major axis (x direction)
real lens_b = 0.3;        // Lens semi-minor axis (y direction)

for(real x = -3.5; x <= 3.5; x += ray_spacing) {
    real ray_end_y = -1; // default endpoint at ground
    
    // Check if ray hits left lens
    if(abs(x - left_lens_cx) <= lens_a) {
        real discriminant = 1 - ((x - left_lens_cx)/lens_a)^2;
        if(discriminant >= 0) {
            real lens_top_y = lens_b * sqrt(discriminant);
            // 80% chance to stop at lens, 20% to pass through
            if(unitrand() < 0.8) {
                ray_end_y = lens_top_y;
            }
        }
    }
    // Check if ray hits right lens
    else if(abs(x - right_lens_cx) <= lens_a) {
        real discriminant = 1 - ((x - right_lens_cx)/lens_a)^2;
        if(discriminant >= 0) {
            real lens_top_y = lens_b * sqrt(discriminant);
            // 80% chance to stop at lens, 20% to pass through
            if(unitrand() < 0.8) {
                ray_end_y = lens_top_y;
            }
        }
    }
    
    // Draw the ray as an arrow 
    draw((x, ray_start_y)--(x, ray_end_y), orange+linewidth(0.5pt), Arrow(size=3));
}