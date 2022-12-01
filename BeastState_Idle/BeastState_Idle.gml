function BeastState_Idle(){
	
	if (sprite_index != sTiedBeast_Idle) sprite_index = sTiedBeast_Idle;
	
	//Make sure player exists and check if they've been spotted
	if (instance_exists(oPlayer))
	{
		if (abs(x - oPlayer.x) < viewRange) playerSpotted = true;
		else playerSpotted = false;
	}
	else playerSpotted = false;
	
	if (playerSpotted) shootDelayTimer --;
	
	//Shoot at the player if they are in range
	if (shootDelayTimer < 0)
	{
		image_index = 0;
		shootDelayTimer = 100;
		state = BeastState_Shoot;
	}
}