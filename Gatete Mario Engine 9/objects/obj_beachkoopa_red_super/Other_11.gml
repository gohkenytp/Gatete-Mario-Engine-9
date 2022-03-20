/// @description Default stomp script

//Create dead object
imdead = instance_create_depth(x, y, -6, obj_enemy_stomped);

//Hereby sprite
imdead.sprite_index = spr_beachkoopa_red_super_dead;

//Hereby frame
imdead.image_index = image_index;

//Hereby facing direction
imdead.image_xscale = xscale;

//Hereby horizontal speed
imdead.hspeed = xspeed;

//Destroy
instance_destroy();