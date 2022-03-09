/// @description Move towards Mario

//If the koopa is not sliding
if (slide == true)
exit;

//If the koopa can move
if (ready > 0) {

    //Set walking sprite
    sprite_index = spr_beachkoopa_blue_walk;
	
	//Animate
	image_speed = 1;
	
	//If Mario does not exist or Mario is at the left
	if (!instance_exists(obj_mario))
	|| (obj_mario.x < x)
		xspeed = (swimming == true) ? -0.4 : -0.8;
	else
		xspeed = (swimming == true) ? 0.4 : 0.8;		
}