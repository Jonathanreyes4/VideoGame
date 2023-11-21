// Evento Create

// Inicializa la dirección y la velocidad
direction = random(360);
speed = 2;

// Inicializa los sprites
sprite_idle_right = IdleE8R;
sprite_idle_left = IdleE8L;
sprite_move_right = MoE8R;
sprite_move_left = MoE8L;

// Establece el sprite inicial
sprite_index = sprite_idle_right;

// Evento Create en ObjectE1
hp = 20; // Iniciar al enemigo con 100 puntos de vida

