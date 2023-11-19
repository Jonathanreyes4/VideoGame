/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if place_meeting(x,y,Ch)
{
	destroy = true;
}

if point_distance(xstart , ystart ,x,y) > maxDist
{
	destroy = true;
}

if destroy == true 
{
	instance_destroy();
}