size(500,220);

void drawScene(real xoff, real mirrorAngle, string lab, bool rayHitsGround) {
    // Floor
        draw((xoff-10,0)--(xoff+120,0), linewidth(1));

            // Mirror (thin line, nearly vertical, behind/left of pole)
                real mirrorBaseX = xoff + 12;
                    real mirrorBaseY = 0;
                        real mirrorLen = 40;
                            real ang = 90 + mirrorAngle;
                                pair mirrorBase = (mirrorBaseX, mirrorBaseY);
                                    pair mirrorTop = mirrorBase + mirrorLen * dir(ang);
                                        draw(mirrorBase--mirrorTop, linewidth(1.5)+gray(0.4));
                                            label("mirror", mirrorTop, N, fontsize(11pt));

                                                // Pole (thick vertical line, right of mirror)
                                                    real poleX = xoff + 28;
                                                        draw((poleX,0)--(poleX,80), linewidth(4)+red);
                                                            label("pole", (poleX, 80), N, fontsize(11pt));

                                                                // Flashlight (significantly off to the right, doubled height)
                                                                    real flX = xoff + 95;
                                                                        real flY = 24;
                                                                            // Body (rectangle)
                                                                                real bw = 12;
                                                                                    real bh = 7;
                                                                                        path body = (flX, flY-bh/2)--(flX+bw, flY-bh/2)--(flX+bw, flY+bh/2)--(flX, flY+bh/2)--cycle;
                                                                                            fill(body, gray(0.25));
                                                                                                draw(body, linewidth(0.8));
                                                                                                    // Head/lens (wider trapezoid on left side, pointing toward mirror)
                                                                                                        real hw = 7;
                                                                                                            real hh1 = bh/2;
                                                                                                                real hh2 = bh/2 + 4;
                                                                                                                    path head = (flX, flY-hh1)--(flX-hw, flY-hh2)--(flX-hw, flY+hh2)--(flX, flY+hh1)--cycle;
                                                                                                                        fill(head, gray(0.35));
                                                                                                                            draw(head, linewidth(0.8));
                                                                                                                                // Lens highlight
                                                                                                                                    draw((flX-hw, flY-hh2)--(flX-hw, flY+hh2), linewidth(1.2)+yellow);

                                                                                                                                        // --- Light ray ---
                                                                                                                                            pair rayStart = (flX - hw, flY);

                                                                                                                                                // Find where horizontal ray hits the mirror
                                                                                                                                                    real t_hit = (flY - mirrorBaseY) / Sin(ang);
                                                                                                                                                        pair hitPoint = mirrorBase + t_hit * dir(ang);

                                                                                                                                                            // Draw incident ray
                                                                                                                                                                draw(rayStart--hitPoint, linewidth(1.0)+orange);

                                                                                                                                                                    // Reflection direction
                                                                                                                                                                        pair n = dir(ang - 90);
                                                                                                                                                                            if (n.x < 0) n = -n;
                                                                                                                                                                                pair d_in = (-1, 0);
                                                                                                                                                                                    real dot_dn = d_in.x * n.x + d_in.y * n.y;
                                                                                                                                                                                        pair d_ref = d_in - 2 * dot_dn * n;

                                                                                                                                                                                            pair rayEnd;
                                                                                                                                                                                                if (rayHitsGround) {
                                                                                                                                                                                                        // Ray hits ground (y=0)
                                                                                                                                                                                                                real s = -hitPoint.y / d_ref.y;
                                                                                                                                                                                                                        rayEnd = hitPoint + s * d_ref;
                                                                                                                                                                                                                                // Extend floor to ray endpoint if needed
                                                                                                                                                                                                                                        if (rayEnd.x > xoff + 120) {
                                                                                                                                                                                                                                                    draw((xoff+120,0)--(rayEnd.x+2,0), linewidth(1));
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                } else {
                                                                                                                                                                                                                                                                        // Ray bounces up, past pole, about half way back to flashlight
                                                                                                                                                                                                                                                                                real targetX = poleX + (flX - hw - poleX) * 0.5;
                                                                                                                                                                                                                                                                                        real s = (targetX - hitPoint.x) / d_ref.x;
                                                                                                                                                                                                                                                                                                rayEnd = hitPoint + s * d_ref;
                                                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                                                        // Draw reflected ray
                                                                                                                                                                                                                                                                                                            draw(hitPoint--rayEnd, linewidth(1.0)+orange);
                                                                                                                                                                                                                                                                                                                fill(circle(rayEnd, 1.5), orange);

                                                                                                                                                                                                                                                                                                                    // Label
                                                                                                                                                                                                                                                                                                                        label(lab, (xoff + 55, -14), fontsize(16pt));
                                                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                                                        drawScene(0, -5, "Y", true);
                                                                                                                                                                                                                                                                                                                        drawScene(175, 5, "Z", false);