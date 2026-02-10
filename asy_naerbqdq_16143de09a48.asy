size(8cm);

pair sun = (-2,10);

srand(21);

// 1. Define Obstacles
path building_shape = box((-1,0),(3,5));
path ground_line = (-10,0)--(10,0);

// Draw sun rays (Primary)
for(int i = 0; i<32; ++i){
    real theta = 360/32*i;
    draw(shift(sun)*scale(20)*((0,0)--dir(theta)), Yellow+linewidth(2pt));
}

// Draw shadow
fill((3,0)--(3,5)--(8,0)--cycle, gray*1.5);

// Draw scattered light
for(int i = 0; i<32; ++i){ 
    real theta = 360/32*i;
    for(int j = 0; j<8; ++j){ 
        real d = unitrand()*20;
        
        // Origin of the secondary ray
        pair ray_origin = sun + dir(theta)*d;
        
        // Random direction for scattered ray
        real th = unitrand()*360;
        
        // Define the full potential ray
        pair ray_end = ray_origin + dir(th)*20;
        path ray_path = ray_origin -- ray_end;
        
        // Maximum length of the ray
        real closest_dist = 20.0; 
        
        // 2. Check intersections with Building
        // intersectionpoints returns the physical points (x,y) where they cross
        pair[] b_hits = intersectionpoints(ray_path, building_shape);
        for(pair p : b_hits){
            real dist = abs(p - ray_origin);
            // We ignore very small distances (0) to avoid glitches at the start point
            if(dist > 0.01) closest_dist = min(closest_dist, dist);
        }
        
        // 3. Check intersections with Ground
        pair[] g_hits = intersectionpoints(ray_path, ground_line);
        for(pair p : g_hits){
            real dist = abs(p - ray_origin);
            if(dist > 0.01) closest_dist = min(closest_dist, dist);
        }

        // 4. Draw the clipped ray
        // If no intersection occurred, closest_dist remains 20 (full length)
        draw(ray_origin -- (ray_origin + dir(th)*closest_dist), yellow);
    }
}

filldraw(shift(sun)*scale(.3)*unitcircle,Yellow);

// Person definition
path person = (-.1,0)--(0,.5)--(.1,0)--(0,.5)--(0,.75)--(-.35,.75)--(.35,.75)--(0,.75)--(0,.8)--shift(0,.9)*scale(.1)*rotate(-90)*unitcircle;

draw((-2,0)--(6,0),linewidth(4pt));

// Draw building last to cover any rays that started inside it
filldraw(building_shape, gray);
draw(shift(3.3,0)*person);
draw(shift(4.1,0)*person);

clip(box((-3,0),(6,11)));