function SkullState_Begin(){
	if (!instance_exists(oText)) && (!instance_exists(oTextQue))
	{
		state = SkullState_Idle;
	}
	
	if (oPlayer.sprite_index != sPriestMan_IdleR) oPlayer.sprite_index = sPriestMan_IdleR;
}