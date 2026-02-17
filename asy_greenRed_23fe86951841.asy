unitsize(0.35cm);

// Flashlight shape
path flashlight = (-.8,0)--(.8,0)--(.8,3.5)--(1.5,4.5)--(-1.5,4.5)--(-.8,3.5)--cycle;

// Geometry setup
real hole_y = 15;
real wall_y = 25;
real hole_halfwidth = 0.5;

// Draw the barrier and wall
draw((-6,hole_y)--(-hole_halfwidth,hole_y), linewidth(2pt));
draw((hole_halfwidth,hole_y)--(6,hole_y), linewidth(2pt));
draw((-6,wall_y)--(6,wall_y), linewidth(2pt));

label("hole",(0,hole_y),SE);
label("wall",(4,wall_y),S);

// Flashlight positions
pair leftFlash = (-3,0);
pair rightFlash = (3,0);

// Draw flashlights
draw(shift(leftFlash)*flashlight);
draw(shift(rightFlash)*flashlight);

//label("flashlight", leftFlash, S);
//label("flashlight", rightFlash, S);

// Function to draw rays
void drawRays(pair src, pen col, real hole_offset)
{
    pair top = src + (0,4.5);
    real[] angles = {-25,-15,0,15,25};
    for (real a : angles) {
        pair dir = dir(90+a);
        real t_hit = (hole_y - top.y)/dir.y;
        pair hit = top + t_hit*dir;
        if (abs(hit.x) <= hole_halfwidth) {
            // passes through hole → goes to wall
            real t_wall = (wall_y - top.y)/dir.y;
            pair wall_hit = top + t_wall*dir;
            draw(top--wall_hit, dashed+col);
            dot(wall_hit, col);
        } else {
            // blocked by barrier
            draw(top--hit, dashed+col);
        }
    }
}

// Draw rays
drawRays(leftFlash, deepgreen, -1);
drawRays(rightFlash, red, 1);