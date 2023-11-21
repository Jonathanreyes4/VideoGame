/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var damage = 1;

if (damage > 0) {
        hp -= damage;
    }
	
if (hp <= 0)
{
	instance_destroy()
	room_goto(Game_OverRoom);
}

