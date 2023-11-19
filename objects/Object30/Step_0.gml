/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if place_meeting(x,y,oDamage_enemy)
{
	var _inst = instance_place(x,y,oDamage_enemy)
	
	//recibir daño
	hp -= _inst.damage;
	
	//instancia para destruirse
	_inst.destroy = true;
}







