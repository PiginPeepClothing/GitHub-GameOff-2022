function AnimatePlayer(){
	//Animations for player free state
	if (state == PlayerState_Free)
	{
		//Jumping animation
		if (!onGround)
		{
			image_speed = 0;
			//Jump animation for right
			if (currentDirection == 1)
			{
				sprite_index = sPriestMan_JumpR;
				if (sign(vSpeed) < 0)
				{
					image_index = 1;
				}
				else if (sign(vSpeed) > 0)
				{
					image_index = 3;
				}
			}
			//Jump animation for left
			else
			{
				sprite_index = sPriestMan_JumpL;
				if (sign(vSpeed) < 0)
				{
					image_index = 1;
				}
				else if (sign(vSpeed) > 0)
				{
					image_index = 3;
				}
			}
		}
		
		//Running + shooting animations
		if (onGround)
		{
			//Idle animations
			if (hSpeed == 0)
			{
				image_speed = 1;
				//Idle when NOT firing
				if (firing == false)
				{
					if (currentDirection == 1) sprite_index = sPriestMan_IdleR;
					else sprite_index = sPriestMan_IdleL;
				}
				//Idle when firing
				else
				{
					if (currentDirection == 1) sprite_index = sPriestMan_IdleShootR;
					else sprite_index = sPriestMan_IdleShootL;
				}
			}
			//Running animations
			else
			{
				image_speed = 1;
				//Running when NOT firing
				if (firing == false)
				{
					if (currentDirection == 1)sprite_index = sPriestMan_RunR;
					else sprite_index = sPriestMan_RunL;
				}
				//Running when firing
				else
				{
					if (currentDirection == 1)sprite_index = sPriestMan_RunShootR;
					else sprite_index = sPriestMan_RunShootL;
				}
			}
		}
	}
}