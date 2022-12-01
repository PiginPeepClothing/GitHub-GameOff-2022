function AnimateNun(){
	//Animations for thrashing nun's idle state
	//Idle animations
	if (hSpeed == 0) && (!attacking)
	{
		image_speed = 1;
		
		if (currentDirection == 1) sprite_index = sThrashingNun_IdleR;
		else sprite_index = sThrashingNun_IdleL;
	}
	//Walking animations
	else if (!raging)
	{
		image_speed = 1;
				
		if (currentDirection == 1)sprite_index = sThrashingNun_WalkR;
		else sprite_index = sThrashingNun_WalkL;				
	}
	else
	{
		image_speed = 1;
				
		if (currentDirection == 1)sprite_index = sThrashingNun_RunR;
		else sprite_index = sThrashingNun_RunL;
	}
}