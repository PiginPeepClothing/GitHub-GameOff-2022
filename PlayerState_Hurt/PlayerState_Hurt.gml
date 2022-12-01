function PlayerState_Hurt(){
	vSpeed += grav;
	hurtTimer --;
	if (currentDirection == 1) sprite_index = sPriestMan_HurtL;
	else sprite_index = sPriestMan_HurtR;
	
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
	
	if (hurtTimer < 0)
	{
		state = PlayerState_Free;
	}
}