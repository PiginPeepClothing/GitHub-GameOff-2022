with (other)
{
	if (state != PlayerState_Hurt)
	{
		hp -= .25;
		flash = 1;
	
		if (hp > 0)
		{
			hSpeed = other.hSpeed * -sign(other.x - x);
			vSpeed = other.vSpeed;
			hurtTimer = other.timeHurt;
			state = PlayerState_Hurt;
		}
	}
}

if (sprite_index != sBlood) instance_destroy();