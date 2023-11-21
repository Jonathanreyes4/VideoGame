/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var damage = 1;

if (escudo > 0)
{
	var shield_damage = min(damage, escudo);
        escudo -= shield_damage;
        damage -= shield_damage;
}

if (damage > 0) {
        hp -= damage;
    }

if (hp <= 0)
{
	instance_destroy()
	room_goto(Salas);
}






