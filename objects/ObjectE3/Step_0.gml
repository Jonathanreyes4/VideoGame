// Evento Step

// Cambia la dirección aleatoriamente
if (random(100) < 5) { // 5% de probabilidad cada frame
    direction = random(360);
}

// Calcula la próxima posición del enemigo
var next_x = x + lengthdir_x(speed, direction);
var next_y = y + lengthdir_y(speed, direction);

// Comprueba si el lugar al que se va a mover está libre
if (place_free(next_x, next_y)) {
    // Si está libre, mueve al enemigo
    x = next_x;
    y = next_y;
} else {
    // Si no está libre (por ejemplo, si hay una pared o el jugador), cambia la dirección del enemigo
    direction = random(360);
}

// Cambia los sprites dependiendo de la dirección y la velocidad
if (speed != 0) {
    if (direction >= 0 && direction < 180) {
        sprite_index = sprite_move_right;
    } else {
        sprite_index = sprite_move_left;
    }
} else {
    if (direction >= 0 && direction < 180) {
        sprite_index = sprite_idle_right;
    } else {
        sprite_index = sprite_idle_left;
    }
}





