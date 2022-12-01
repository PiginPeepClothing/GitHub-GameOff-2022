function BeastState_Hurt(){
	hurtTimer --;
	
	if (shootDelayTimer > 0) shootDelayTimer--;
	
	sprite_index = sTiedBeast_Hurt;
	
	if (hurtTimer <= 0)
	{
		state = BeastState_Idle;
	}
}