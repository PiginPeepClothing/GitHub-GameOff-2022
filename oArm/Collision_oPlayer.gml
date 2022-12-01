if (slam)
{
	with (other)
	{
		if (state != PlayerState_Hurt)
		{
			hp -= .5;
			flash = 1;
	
			if (hp > 0)
			{
				hSpeed = 0;
				vSpeed = 0;
				hurtTimer = 20;
				state = PlayerState_Hurt;
			}
		}
	}
}