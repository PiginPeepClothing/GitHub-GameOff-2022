if (hp > 0)
	{
		var _hurt = irandom(1);
		if (_hurt == 1) && (state != NunState_BeginRage)
		{
			hSpeed = 0;
			lastState = state;
			hurtTimer = 15;
			state = NunState_Hurt;
		}
	}