// Evento Draw

// Dibuja al jugador
draw_self();

// Obtiene la posición de la cámara
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

// Dibuja los corazones y los escudos del jugador
for (var i = 0; i < vida; i++) {
    draw_sprite(H, 0, cam_x + i * 50, cam_y);
}
for (var i = 0; i < escudo; i++) {
    draw_sprite(S, 0, cam_x + i * 48, cam_y + 48);
}

// Dibuja la barra de maná
var bar_width = 200; // Hace la barra más grande
var bar_height = 20; // Hace la barra más grande
var bar_x = cam_x;
var bar_y = cam_y + 66 + 48; // Ajusta este valor según dónde quieras que aparezca la barra
draw_set_color(c_blue);
draw_rectangle(bar_x, bar_y, bar_x + bar_width * (mana / 100), bar_y + bar_height, false);

// Dibuja la cantidad de maná
draw_set_color(c_white);
draw_text(bar_x + bar_width / 2, bar_y, string(mana));
