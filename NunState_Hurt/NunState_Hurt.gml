function NunState_Hurt(){
	vSpeed += grav;
	hurtTimer --;
	if (currentDirection == 1) sprite_index = sThrashingNun_HurtR;
	else sprite_index = sThrashingNun_HurtL;
	
	//Detect collision
	//Horizontal collision
	if (place_meeting(x + hSpeed, y, oWall))
	{
		while(!place_meeting((x + sign(hSpeed)), y, oWall))
		{
			x += sign(hSpeed);
		}
		hSpeed = 0;
	}
	
	//Vertical collision
		if (place_meeting(x, y + vSpeed, oWall))
	{
		while(!place_meeting(x, (y + sign(vSpeed)), oWall))
		{
			y += sign(vSpeed);
		}
		vSpeed = 0;
	}
	
	//Move if supposed to
	x += hSpeed;
	y += vSpeed;
	
	//Become angrier once hurt
	if (rageTimer > 0)
	{
		rageTimer -= 10;
	}
	
	if (hurtTimer < 0) && (onGround)
	{
		state = lastState;
	}
}