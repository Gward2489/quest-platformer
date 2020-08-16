/// @description Establish key variables

hsp = 0;
vsp = 0;
grv = 0.3;
walksp = 4;
jumpsp = 9;

//get tilemap
tilemap = layer_tilemap_get_id("collisions");

// get bounding box coords
 sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
 sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
 sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
 sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);