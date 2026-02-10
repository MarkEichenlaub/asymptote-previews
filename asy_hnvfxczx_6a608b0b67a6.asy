size(12cm); // Widen the canvas

pair sun = (-2,10);
srand(9); // Seed for reproducible random rays

fill((3,0)--(3,5)--(8,0)--cycle, gray*1.5);

// --- 1. Define The World ---

// We define objects as closed paths (boxes/circles) so we can use inside()
// to prevent rays from traveling through them.

path building = box((-1,0), (3,5));

// Tree: A trunk and a circular top
path trunk = box((6,0), (6.8, 2));
path foliage = shift(6.4, 3.2)*scale(1.6)*unitcircle;
path tree = trunk -- foliage -- cycle; // Grouping for simple drawing, but we treat distinct for physics

// Ground: Defined as a large box below y=0 so we can detect "inside"
path ground = box((-5,-5), (15,0));

// Array of all physical objects
path[] obstacles = {building, trunk, foliage, ground};

// --- 2. Helper Function: Find Closest Hit ---

struct HitInfo {
  pair pt;       // Where it hit
  int obj_idx;   // Which object index it hit (-1 if none)
  real dist;     // Distance to hit
}

HitInfo castRay(pair origin, pair direction) {
    HitInfo hit;
    hit.pt = origin + direction * 50; // Default to far away
    hit.dist = 50.0;
    hit.obj_idx = -1;
    
    // Create a long ray path
    path ray = origin -- hit.pt;
    
    // Check against every object
    for(int i=0; i<obstacles.length; ++i) {
        pair[] intersections = intersectionpoints(ray, obstacles[i]);
        for(pair p : intersections) {
            real d = length(p - origin);
            // Check d > 0.01 to avoid detecting the starting point itself as a hit
            if(d > 0.01 && d < hit.dist) {
                hit.dist = d;
                hit.pt = p;
                hit.obj_idx = i;
            }
        }
    }
    return hit;
}

// --- 3. Main Loop ---

// Loop Primary Rays (Sun -> World)
for(int i = 0; i < 40; ++i) {
    real angle = -15 - (i/40.0 * 90); // Fan out downwards
    pair dir = dir(angle);
    
    // Cast Primary Ray
    HitInfo primaryHit = castRay(sun, dir);
    
    // Draw Primary Ray
    draw(sun -- primaryHit.pt, Yellow+linewidth(2pt));
    
    // If it hit something (idx != -1), spawn secondary rays
    if(primaryHit.obj_idx != -1) {
        
        // Spawn 3 secondary rays
        for(int j=0; j<3; ++j) {
            bool valid_dir = false;
            pair sec_dir;
            
            // Try to find a direction that doesn't go INSIDE the object we just hit
            // We give it 10 tries to find a valid bounce direction
            for(int k=0; k<10; ++k) {
                sec_dir = dir(unitrand() * 360);
                
                // Test point slightly along the new ray
                pair test_pt = primaryHit.pt + sec_dir * 0.1;
                
                // Check if this test point is inside the object we hit
                if(!inside(obstacles[primaryHit.obj_idx], test_pt)) {
                    valid_dir = true;
                    break; 
                }
            }
            
            if(valid_dir) {
                // Cast Secondary Ray from the previous hit point
                HitInfo secHit = castRay(primaryHit.pt, sec_dir);
                draw(primaryHit.pt -- secHit.pt, yellow+linewidth(0.5pt));
            }
        }
    }
}

// --- 4. Draw Scene Elements (Overlays) ---

filldraw(building, gray);


// Draw Tree
fill(trunk, brown);
draw(trunk);
filldraw(foliage, darkgreen, black);

// Draw Ground line
draw((-5,0)--(12,0), linewidth(3pt));

// Sun
filldraw(shift(sun)*scale(.4)*unitcircle, Yellow, orange);

// Person (just for scale)
path person = (-.1,0)--(0,.5)--(.1,0)--(0,.5)--(0,.75)--(-.35,.75)--(.35,.75)--(0,.75)--(0,.8)--shift(0,.9)*scale(.1)*rotate(-90)*unitcircle;
draw(shift(3.3,0)*person);
draw(shift(4.1,0)*person);

// Clip to scene
clip(box((-3,0),(10,11)));