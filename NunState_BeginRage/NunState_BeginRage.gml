function NunState_BeginRage(){
	if (currentDirection == 1)
	{
		if (sprite_index != sThrashingNun_RageBuildR)
		{
			sprite_index = sThrashingNun_RageBuildR;
		}
	}
	else
	{
		if (sprite_index != sThrashingNun_RageBuildL)
		{
			sprite_index = sThrashingNun_RageBuildL;
		}
	}
	
	if (image_index > image_number - 1)
	{
		image_index = 0;
		raging = true;
		changeIdleTimer = irandom_range(100,200);
		hSpeed = runSpeed * currentDirection;
		state = NunState_Rage;
	}
}