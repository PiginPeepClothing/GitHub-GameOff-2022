function PlayerState_Attack(){
	//Start of attack
	if (currentDirection == 1)
	{
		if (sprite_index != sPriestMan_KickR)
			{
				sprite_index = sPriestMan_KickR;
				image_index = 0;
				ds_list_clear(hitByAttack);
			}
	}
	else
	{
			if (sprite_index != sPriestMan_KickL)
			{
				sprite_index = sPriestMan_KickL;
				image_index = 0;
				ds_list_clear(hitByAttack);
			}
	}
	
	//Check for hits with hitbox
	if (currentDirection == 1) mask_index = sPriestMan_KickRHB;
	else mask_index = sPriestMan_KickLHB;
	
	var _hitByAttackNow = ds_list_create();
	var _hits = instance_place_list(x, y, oThrashingNun, _hitByAttackNow, false);
	if (_hits > 0)
	{
		for (var i = 0; i < _hits; i++)
		{
			//If this instance hasn't been hit by this attack yet
			var hitID = _hitByAttackNow[| i];
			if (ds_list_find_index(hitByAttack, hitID) == -1)
			{
				ds_list_add(hitByAttack, hitID);
				with (hitID)
				{
					if (state != NunState_Attack)
					{
						hp -= .25;
						hurtTimer = 20;
						flash = 2;
						hSpeed = 3 * sign(other.currentDirection);
						vSpeed = -5;
						lastState = state;
						state = NunState_Hurt;
					}
				}
			}
		}
	}
	
	//Return to free state
	if (image_index > image_number - 1)
	{
		mask_index = sPriestMan_IdleR;
		state = PlayerState_Free;
	}
}