// Evento Step del objeto del jugador (obj_Ch)

// Comprueba si se presionan las teclas WASD y ajusta las variables de velocidad en consecuencia
if (keyboard_check(ord("W"))) {
    vsp = -move_speed;
}
if (keyboard_check(ord("S"))) {
    vsp = move_speed;
}
if (keyboard_check(ord("A"))) {
    hsp = -move_speed;
    facing = "left";
}
if (keyboard_check(ord("D"))) {
    hsp = move_speed;
    facing = "right";
}

// Si no se presiona ninguna tecla, detén el movimiento del personaje
if (!keyboard_check(ord("A")) && !keyboard_check(ord("D"))) {
    hsp = 0;
}
if (!keyboard_check(ord("W")) && !keyboard_check(ord("S"))) {
    vsp = 0;
}

// Mueve al personaje si es posible
if (place_free(x + hsp, y)) {
    x += hsp;
}
if (place_free(x, y + vsp)) {
    y += vsp;
}

// Cambia los sprites según la dirección en la que se está moviendo el personaje
if (hsp != 0 || vsp != 0) {
    if (facing == "left") {
        sprite_index = WalkL; // Cambia el sprite a WalkL cuando se mueve a la izquierda
    } else if (facing == "right") {
        sprite_index = WalkR; // Cambia el sprite a WalkR cuando se mueve a la derecha
    }
} else {
    if (facing == "left") {
        sprite_index = IdleL; // Cambia el sprite a IdleL cuando está quieto
    } else if (facing == "right") {
        sprite_index = IdleR; // Cambia el sprite a IdleR cuando está quieto
    }
}





