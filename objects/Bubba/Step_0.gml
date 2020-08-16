/// @description Core Player Logic

// yeee
//get player inputs
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

// check if player is moving left or right
var _move = key_right - key_left;

// get walk speed
hsp = _move *  walksp;

// if player has pressed jump initiate jump
if (tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) != 0 || tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) != 0) {
	if (key_jump)
	{	
		vsp = -jumpsp
	}
} else {
	vsp += grv;
}


// check vertical movement for tile collision
if (vsp > 0) {
	// going up
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom);
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom);

	if (t1 != 0 || t2 != 0) {
		//collision is happening
		//y = bbox_bottom + sprite_bbox_bottom;
		vsp = 0;
	} 

} else {
	// going down
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top);
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top);

	if (t1 != 0 || t2 != 0) {
		//collision is happening
		//y = bbox_top - sprite_bbox_top;
		vsp = 0;
	}

}

// check horizontal movement for tile collision
if (hsp > 0) {
	// going right
	var t1 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top);


	if (t1 != 0 ) {
		//collision is happening
		//x = ((bbox_right & ~31) - 1) - sprite_bbox_right;
		hsp = 0;
	}

} else {
	// going down
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top);


	if (t1 != 0) {
		//collision is happening
		//x= ((bbox_left + 32) & ~31) - sprite_bbox_left;
		hsp = 0;
	}

}	

 y += vsp;
 x += hsp;
