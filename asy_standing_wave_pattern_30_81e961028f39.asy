//https://artofproblemsolving.com/texer/qxsnwpdo

size(12cm, 8cm);

//============ MAIN CONTROL ============
int num_antinodes = 1;  // SET THIS: 1, 2, 3, 4, or 5
//======================================

//========== ADJUSTABLE PARAMETERS ==========
// Dot diagram settings
real base_density = 0.3;
real section_width = 1.0;
real section_height = 3.0;
int num_sections = 15;
bool show_dot_sections = false;

// Amplitude overlay settings
bool show_amplitude_curve = true;
real amplitude_offset = 0.8;      // Gap between dots and curve baseline
real amplitude_scale = 1.2;       // Height of the envelope peaks

// Inner loop settings
real inner_amplitude_1 = 0.7;
real inner_amplitude_2 = 0.35;

// Label settings
bool show_labels = true;
real label_y = -2.3;              // Y position for "N" and "A" text labels (below everything)
real node_dot_size = 5;           // Size of the node marker dots
//===========================================

// Dot appearance
real dot_size = 1.5;
pen dot_color = rgb(100/255, 143/255, 255/255);

// Calculated values
real total_width = num_sections * section_width;
real start_x = -total_width / 2;

// Amplitude baseline (calculated here so it's available for labels)
real baseline_y = 0;

// ------------------------------------------------------
// DENSITY FUNCTION
// ------------------------------------------------------
real density_at(real x_normalized) {
return 1.0 + abs(sin(num_antinodes * pi * x_normalized));
}

// ------------------------------------------------------
// DRAW DOT SECTIONS
// ------------------------------------------------------
if(show_dot_sections) {
for(int i = 0; i < num_sections; ++i) {
real left_x = start_x + i * section_width;
real right_x = left_x + section_width;
real bottom_y = -section_height / 2;
real top_y = section_height / 2;

draw((left_x, bottom_y)--(right_x, bottom_y)--(right_x, top_y)--(left_x, top_y)--cycle,
black + linewidth(1pt));

real center_normalized = (i + 0.5) / num_sections;
real current_density = base_density * density_at(center_normalized);

int dots_per_row = floor(section_width / 0.15 * sqrt(current_density));
int num_rows = floor(section_height / 0.15 * sqrt(current_density));

for(int row = 0; row < num_rows; ++row) {
for(int col = 0; col < dots_per_row; ++col) {
real x_pos = left_x + (col + 0.5) * section_width / dots_per_row
+ (unitrand() - 0.5) * 0.1;
real y_pos = bottom_y + (row + 0.5) * section_height / num_rows
+ (unitrand() - 0.5) * 0.1;

if(x_pos > left_x + 0.05 && x_pos < right_x - 0.05 &&
y_pos > bottom_y + 0.05 && y_pos < top_y - 0.05) {
dot((x_pos, y_pos), dot_color + linewidth(dot_size));
}
}
}
}
}

// ------------------------------------------------------
// AMPLITUDE ENVELOPE WITH LOOPS
// ------------------------------------------------------
if(show_amplitude_curve) {
int num_points = 200;

path build_envelope(real amp_fraction, int sign) {
path p;
for(int i = 0; i <= num_points; ++i) {
real x_norm = i * 1.0 / num_points;
real x = start_x + x_norm * total_width;
real y = baseline_y + sign * amp_fraction * amplitude_scale
* abs(sin(num_antinodes * pi * x_norm));

if(i == 0) {
p = (x, y);
} else {
p = p -- (x, y);
}
}
return p;
}

// Baseline (equilibrium)
draw((start_x, baseline_y) -- (start_x + total_width, baseline_y),
gray + linewidth(0.5pt));

// Outer envelope (solid)
draw(build_envelope(1.0, +1), magenta + linewidth(1.5pt));
draw(build_envelope(1.0, -1), magenta + linewidth(1.5pt));

// Inner loops (dashed)
draw(build_envelope(inner_amplitude_1, +1), magenta + dashed + linewidth(1pt));
draw(build_envelope(inner_amplitude_1, -1), magenta + dashed + linewidth(1pt));
draw(build_envelope(inner_amplitude_2, +1), magenta + dashed + linewidth(1pt));
draw(build_envelope(inner_amplitude_2, -1), magenta + dashed + linewidth(1pt));
}

// ------------------------------------------------------
// NODE AND ANTINODE MARKERS
// ------------------------------------------------------
if(show_labels) {
// Calculate top of amplitude envelope for antinode lines
real envelope_top = baseline_y + amplitude_scale;
real envelope_bottom = baseline_y - amplitude_scale;

// NODES: dots on the amplitude baseline, "N" labels below
for(int k = 0; k <= num_antinodes; ++k) {
real node_x_norm = k * 1.0 / num_antinodes;
real node_x = start_x + node_x_norm * total_width;

// Dot aligned with amplitude diagram baseline
dot((node_x, baseline_y), black + linewidth(node_dot_size));

// "N" label below everything
label("N", (node_x, label_y), fontsize(10));
}

// ANTINODES: dashed lines from bottom through amplitude envelope, "A" labels below
for(int k = 0; k < num_antinodes; ++k) {
real antinode_x_norm = (2*k + 1.0) / (2.0 * num_antinodes);
real antinode_x = start_x + antinode_x_norm * total_width;

// Dashed line extends from below dot diagram through amplitude envelope
draw((antinode_x, -section_height/2) -- (antinode_x, envelope_top),
dashed + linewidth(1pt));

// "A" label below everything
label("A", (antinode_x, label_y), fontsize(10));
}
}