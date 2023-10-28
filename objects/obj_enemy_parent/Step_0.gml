// Evento Step

// Comprueba si el lugar al que se va a mover está libre
if (place_free(x + speed, y)) {
    // Si está libre, mueve al enemigo
    x += speed;
} else {
    // Si no está libre (por ejemplo, si hay una pared), detén al enemigo
    speed = 0;
}

