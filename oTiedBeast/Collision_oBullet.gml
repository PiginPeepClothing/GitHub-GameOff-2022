if (hp > 0)
	{
		var _hurt = irandom(1);
		if (_hurt == 1)
		{
			lastState = state;
			hurtTimer = 20;
			state = BeastState_Hurt;
		}
	}