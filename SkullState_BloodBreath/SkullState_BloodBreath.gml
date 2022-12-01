function SkullState_BloodBreath(){
	if (y != 660) y += (660 - y) / 15;
	
	//Fire blood breath
	if (sprite_index == sSkull_OpenMouth) && (image_index >= image_number - 1)
	{
		image_index = image_number - 1;
		if (blastTimer > 0)
		{
			blastTimer --;
			with (instance_create_layer(x + 5, y - 50, "lBullets", oBeastBullet))
				{
					sprite_index = sBlood;
					speed = 5;
					direction = 180;
					timeHurt = 40;
					hSpeed = 0;
					vSpeed = 0;
				}
		}
		else 
		{
			image_index = 0;
			sprite_index = sSkull_CloseMouth;
		}
	}
	
	if (sprite_index == sSkull_CloseMouth) && (image_index > image_number - 1)
	{
		changeIdleTimer = irandom_range(200, 400);
		state = SkullState_Idle;
	}
}