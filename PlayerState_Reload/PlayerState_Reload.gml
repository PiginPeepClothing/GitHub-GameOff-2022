function PlayerState_Reload(){
	if (currentDirection == 1)
	{
		if (sprite_index != sPriestMan_ReloadR) sprite_index = sPriestMan_ReloadR;
	}
	else
	{
		if (sprite_index != sPriestMan_ReloadL) sprite_index = sPriestMan_ReloadL;
	}
	
	if (!audio_is_playing(sndReload)) audio_play_sound(sndReload, 1, false);
	ammo = ammoMax;
	
	//Return to free state
	if (image_index > image_number - 1)
	{
		mask_index = sPriestMan_IdleR;
		state = PlayerState_Free;
	}
}