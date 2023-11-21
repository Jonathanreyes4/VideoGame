if (pause) {
    if (!surface_exists(pauseSurface)) {
        pauseSurface = surface_create(1280, 720); // Tamaño de la cámara del jugador
        surface_set_target(pauseSurface);
        draw_surface(application_surface, 0, 0);
        surface_reset_target();
        
        instance_deactivate_all(true);
    }
    
    var cam_x = camera_get_view_x(view_camera[0]);
    var cam_y = camera_get_view_y(view_camera[0]);
    
    draw_surface(pauseSurface, cam_x, cam_y); // Ajustado a la posición de la cámara
    
    draw_set_color(c_black);
    draw_set_alpha(0.5);
    draw_rectangle(cam_x, cam_y, cam_x + 1280, cam_y + 720, false); // Ajustado al tamaño de la cámara
    draw_set_alpha(1);
    draw_set_color(c_white);
    
    draw_set_font(fntPause);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(cam_x + 1200 / 2, cam_y + 720 / 2, "Juego Pausado"); // Ajustado al tamaño de la cámara
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}
