/// @description Throw up a fireball

//If there's not gravity
if (yadd == 0) {
	
	//Play 'Fireball' sound
	audio_play_sound(snd_fireball, 0, false);
	
	//Set spitting sprite
	sprite_index = spr_firebro_spit;
    
    //If Mario does not exist or it's at the left
    if (!instance_exists(obj_mario)) 
	|| (obj_mario.x < x) {
        
        with (instance_create_depth(x, y-4, -2, obj_firebro_fireball)) {
            
            xspeed = -3;
            image_xscale = -1;
        }
    }
        
    //Otherwise, if the player is at the left.
    else {
        
        with (instance_create_depth(x, y-4, -2, obj_firebro_fireball)) {
            
            xspeed = 3;
            image_xscale = 1;
        }
    }
    
    //Next
    alarm[2] = 30;
	
	//Stop horizontal speed
    prevxspeed = xspeed;
    xspeed = 0;
}
else
    alarm[2] = 1;