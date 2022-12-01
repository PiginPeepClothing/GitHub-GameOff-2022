function SkullState_Idle(){
	if (sprite_index != sSkull_Idle) sprite_index = sSkull_Idle;
	
	changeIdleTimer--;
	
	//Move back to default spot if not there
	if (x != defaultXPos) x += (defaultXPos - x) / 15;
	if (y != defaultYPos) y += (defaultYPos - y) / 15;
	
	//Choose an attack once timer is done
	if (changeIdleTimer < 0)
	{
		var _attack = irandom(1);
		if (_attack == 1)
		{
			newY -= irandom(40);
			image_index = 0;
			state = SkullState_FireEyes;
		}
		else
		{
			blastTimer = irandom_range(60, 120);
			image_index = 0;
			sprite_index = sSkull_OpenMouth;
			state = SkullState_BloodBreath;
		}
	}
}