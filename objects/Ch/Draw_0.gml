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



