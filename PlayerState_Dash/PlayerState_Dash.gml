function PlayerState_Dash(){
	//Move player
	var _dir = 0;
	if (currentDirection != 1) _dir = 180;
	hSpeed = lengthdir_x(dashSpeed, _dir);
	dashDelay = 30;
	
	dashDistanceRemaining = max(0, dashDistanceRemaining - dashSpeed);
	if (place_meeting(x + hSpeed, y, oWall))
	{
		hSpeed = 0;
	}
	
	//Animate player
	if (currentDirection == 1) sprite_index = sPriestMan_DashR;
	else sprite_index = sPriestMan_DashL;
	var _totalFrames = sprite_get_number(sprite_index);
	image_index = _totalFrames + ((1 - (dashDistanceRemaining / dashDist)) * _totalFrames);
	
	x += hSpeed;
	
	//Back to free state
	if (dashDistanceRemaining <= 0) state = PlayerState_Free;
}