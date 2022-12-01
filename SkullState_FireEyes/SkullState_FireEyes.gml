function SkullState_FireEyes(){
	if (sprite_index != sSkull_FireEyes) sprite_index = sSkull_FireEyes;
	
	if (y != newY) y += (newY - y) / 15;
	
	
	//Return to idle state
	if (image_index > image_number - 1)
	{
		//Shoot fire
		if (instance_exists(oPlayer))
		{
			with (instance_create_layer(x, y - 110, "lBullets", oBeastBullet))
			{
				sprite_index = sFire;
				speed = 10;
				direction = point_direction(x, y, oPlayer.x, oPlayer.y - 100);
			}
		}
		changeIdleTimer = irandom_range(200, 400);
		state = SkullState_Idle;
	}
}