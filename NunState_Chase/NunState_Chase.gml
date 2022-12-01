function NunState_Chase(){
	//Make sure player is still alive
	if (instance_exists(oPlayer))
	{
		xTo = oPlayer.x;
		rageTimer --;
		vSpeed += grav;
	
		//Follow the player
		if (xTo > x)
		{
			hSpeed = walkSpeed;
			currentDirection = 1;
		}
		else
		{
			hSpeed = -walkSpeed;
			currentDirection = -1;
		}
		
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
	
		//Attack when player is in range
		if (abs(x - xTo) <= 50)
		{
			image_index = 0;
			rageTimer += 10;
			state = NunState_Attack;
		}
	
		x += hSpeed;
		y += vSpeed;
		
		//Enter rage when timer runs out
		if (rageTimer <= 0)
		{
			image_index = 0;
			state = NunState_BeginRage;
		}
	
		//Animate Nun
		AnimateNun();
	}
	//Return to idle if player is dead
	else state = NunState_Idle;
}