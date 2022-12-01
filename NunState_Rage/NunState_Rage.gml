function NunState_Rage(){
	if (instance_exists(oPlayer))
	{
		changeIdleTimer --;
		playerX = oPlayer.x;
		hSpeed = currentDirection * runSpeed;
		vSpeed += grav;
		
		//Run around but don't let the player get too far away
		if (changeIdleTimer <= 0) && (abs(x - playerX) < 100) && (onGround)
		{
			hSpeed = -hSpeed;
			currentDirection = -currentDirection;
			changeIdleTimer = irandom_range(100, 200);
		}
		if (abs(x - playerX) > 400) && (onGround)
		{
			if ((x - playerX) > 0)
			{
				hSpeed = -runSpeed;	
				currentDirection = -1;
			}
			else
			{
				hSpeed = runSpeed;
				currentDirection = 1;
			}
		}
		
		//Detect collision
		//Horizontal collision
		if (place_meeting(x + hSpeed, y, oWall))
		{
			while(!place_meeting((x + sign(hSpeed)), y, oWall))
			{
				x += sign(hSpeed);
			}
			hSpeed = -hSpeed;
			currentDirection = -currentDirection;
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
			
			//Player collision
			if (place_meeting(x, y, oPlayer))
			{
				with (oPlayer)
				{
					if (hurtTimer <= 0)
					{
						hp -= .25;
						hurtTimer = 20;
						flash = 4;
						vSpeed = -3;
						hSpeed = 3 * sign(other.currentDirection);
						state = PlayerState_Hurt;
					}
				}
			}
	
		x += hSpeed;
		y += vSpeed;
		
		
		//Animate nun
		AnimateNun();
	}
	else state = NunState_Idle;
}