hp -= 1

if hp <= 0
{
	global.points += 20
	effect_create_above(ef_firework, x, y, 0, c_white);
	instance_destroy()
}









