function NunState_Attack(){
	//Start of attack
	if (currentDirection == 1)
	{
		if (sprite_index != sThrashingNun_AttackR)
			{
				sprite_index = sThrashingNun_AttackR;
				image_index = 0;
			}
	}
	else
	{
			if (sprite_index != sThrashingNun_AttackL)
			{
				sprite_index = sThrashingNun_AttackL;
				image_index = 0;
			}
	}
	
	//Check for hits with hitbox
	if (currentDirection == 1) mask_index = sThrashingNun_AttackRHB;
	else mask_index = sThrashingNun_AttackLHB;
	
	if (place_meeting(x, y, oPlayer))
	{
		if (oPlayer.hurtTimer <= 0)
		{
			with (oPlayer)
			{
				hp -= .5;
				hurtTimer = 20;
				flash = 4;
				vSpeed = -5;
				hSpeed = 3 * sign(other.currentDirection);
				state = PlayerState_Hurt;
			}
		}
	}
	
	//Return to free state
	if (image_index > image_number - 1)
	{
		mask_index = sThrashingNun_WalkL;
		state = NunState_Chase;
	}
}