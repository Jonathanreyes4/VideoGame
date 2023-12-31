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
// Probabilidad de ataque
var attack_chance = 0.01; // Ajusta esto para cambiar la frecuencia de los ataques

// Verificar si el enemigo va a atacar
if (random(1) < attack_chance) {
    // Cambiar al sprite de ataque
    sprite_index = AE2; // Reemplaza SpriteAtaque con el nombre de tu sprite de ataque

    // Número de balas para disparar
    var bullet_count = irandom_range(1, 5); // Dispara entre 1 y 5 balas

    // Disparar las balas en direcciones aleatorias
    for (var i = 0; i < bullet_count; i++) {
        var bullet_direction = random(360); // Dirección aleatoria en grados
        var bullet_speed = 10; // Velocidad de la bala

        // Crear la bala
        var bullet = instance_create_layer(x, y, "Instances", ObjB2); // Reemplaza ObjB1 con el nombre de tu objeto de bala

        // Configurar la dirección y la velocidad de la bala
        bullet.direction = bullet_direction;
        bullet.speed = bullet_speed;
    }
}

//recibir daño
if place_meeting(x,y,oDamage_enemy)
{
	var _inst = instance_place(x,y,oDamage_enemy)
	
	//recibir daño
	hp -= _inst.damage;
	
	//instancia para destruirse
	_inst.destroy = true;
}

if hp <= 0 
{
	instance_destroy()
}


