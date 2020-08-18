/// @description Base PLayer Movement and Action

//get player inputs
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

// check if player is moving left or right
var _move = key_right - key_left;

// get walk speed
x_speed = _move *  walk_sp;

y_speed += grav;

// check for tiles horizontally
if (tilemap_get_at_pixel(collision_tile_layer, x + x_speed, y)) 
{
	x -= x mod TILE_SIZE;
	if (sign(x_speed) == 1)
	{
		x += TILE_SIZE -1;
	}
	x_speed = 0;	
}

// check for tile underneath
if (tilemap_get_at_pixel(collision_tile_layer, x, y + y_speed + (sprite_height - 1)))
{
	if (key_jump)
	{
		y_speed = -jump_sp;
	} 
	else 
	{
		y_speed = 0;
	}	
}

// check for hitting bottom of tile during upward movement
if (tilemap_get_at_pixel(collision_tile_layer, x, y + y_speed))
{
		y_speed =  0 + grav;		
}


x += x_speed;
y += y_speed;