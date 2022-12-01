if (hp <= 0)
{
	if (oPlayer.sprite_index != sPriestMan_IdleR) oPlayer.sprite_index = sPriestMan_IdleR;
	dead--;
	if (dead < 0) && (!instance_exists(oText))
	{
		SlideTransition(TRANS_MODE.GOTO, rEnding);
	}
	
	oArm.state = ArmState_Defeated;
	state = SkullState_Defeated;
}
