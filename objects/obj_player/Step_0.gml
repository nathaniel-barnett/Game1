key_left = keyboard_check(ord("A")) or keyboard_check(vk_left);
key_right = keyboard_check(ord("D")) or keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

var move = key_right - key_left

hsp = move * walkspd;

vsp = vsp + grv;

if (place_meeting(x + hsp,y,obj_wall))
{
   while (!place_meeting(x + sign(hsp),y,obj_wall))
   {
		x = x + sign(hsp);
   }
   hsp = 0;
}
x = x + hsp;
//----------------------------------------------------
/*

1234

*/
if (place_meeting(x,y + vsp,obj_wall))
{
   while (!place_meeting(x,y + sign(vsp),obj_wall))
   {
		y = y + sign(vsp);
   }
   vsp = 0;
}
y = y + vsp;

//------------------ANIMATIONS------------------------
//----------------------------------------------------
if (color = 0)
{

if (place_meeting(x,y+1,obj_wall)) and (key_jump)
{
	vsp = -7;
}

if(!place_meeting(x,y+1,obj_wall))
{
	sprite_index = spr_player_jump;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; 
	else image_index = 0;
}

else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = spr_player;
	}
	else
	{
		sprite_index = spr_player_run;
	}
}

with(obj_bluefollow) instance_destroy();

if (hsp != 0) image_xscale = -1 * sign(hsp);
}
//------------------------------------------------------
if (color = 2)
{

if (place_meeting(x,y+1,obj_wall)) and (key_jump)
{
	vsp = -10;
}

if(!place_meeting(x,y+1,obj_wall))
{
	sprite_index = spr_playergreen_jump;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; 
	else image_index = 0;
}

else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = spr_player_green;
	}
	else
	{
		sprite_index = spr_playergreen_run;
	}
}

with(obj_bluefollow) instance_destroy();

if (hsp != 0) image_xscale = -1 * sign(hsp);
}
//------------------------------------------------------
if (color = 1)
{

instance_create_layer(x + 0, y + 0, "Layer_Bluefollow", obj_bluefollow);

if (place_meeting(x,y+1,obj_wall)) and (key_jump)
{
	vsp = -7;
}

if(!place_meeting(x,y+1,obj_wall))
{
	sprite_index = spr_playerblue_jump;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; 
	else image_index = 0;
}

else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = spr_player_blue;
	}
	else
	{
		sprite_index = spr_playerblue_run;
	}
}

if (hsp != 0) image_xscale = -1 * sign(hsp);
}



