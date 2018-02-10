x = obj_player.x;
y = obj_player.y+10;

image_angle = point_direction(x,y,mouse_x,mouse_y);

shootRecharge = shootRecharge - 1;
if (mouse_check_button(mb_right)) and (shootRecharge < 0)
{
	shootRecharge = 50;
	with (instance_create_layer(x,y,"Layer_Bullets",obj_icebullet))
	{
		speed = 1;
		direction = other.image_angle;
		image_angle = direction;
	}	
}

