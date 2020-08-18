/// @description Establish key variables

// horizontal speed
x_speed = 0;

// vertical speed
y_speed = 0;

//gravity
grav = 0.3;

// walk/jump speed
walk_sp = 4;
jump_sp = 9;

//collion tile reference
collision_tile_layer = layer_tilemap_get_id("collisions");

// get bounding box coords
sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);

