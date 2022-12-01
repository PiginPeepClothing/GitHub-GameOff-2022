function NunState_Idle(){
	if (instance_exists(oPlayer))
	{
		var _playerXLocation = oPlayer.x;
		var _playerYLocation = oPlayer.y;
	}
	
	//Determine direction
	if (changeIdleTimer <= 0)
	{
		var _whatDo = irandom(3);
		if (_whatDo < 2)
		{
			hSpeed = walkSpeed;
			currentDirection = 1;
		}
		else if (_whatDo > 2)
		{
			hSpeed = -walkSpeed;
			currentDirection = -1;
		}
		else hSpeed = 0;
		changeIdleTimer = 150;
	}
	
	vSpeed += grav;
	changeIdleTimer--;
	
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
	
	//Spot player if player exists
	if (instance_exists(oPlayer))
	{
		if (abs(x - _playerXLocation) <= viewRange) && (abs(y - _playerYLocation) <= viewRange)
		{
			changeIdleTimer = 0;
			state = NunState_Chase;
			rageTimer = 300;
		}
	}
	
	//Animate Thrashing Nun
	AnimateNun();
	
	//Move Thrashing Nun
	x += hSpeed;
	y += vSpeed;
}