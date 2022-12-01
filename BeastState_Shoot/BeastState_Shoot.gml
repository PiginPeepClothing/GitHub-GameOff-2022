function BeastState_Shoot(){
	
	if (sprite_index != sTiedBeast_Shoot)
	{
		sprite_index = sTiedBeast_Shoot;
	}
	
	//Shoot bullet then return to idle once animation finishes
	if (image_index > image_number - 1) && (instance_exists(oPlayer))
	{
		//Shoot bullet
		with (instance_create_layer(x, y - 110, "lBullets", oBeastBullet))
		{
			speed = 12;
			direction = point_direction(x, y, oPlayer.x, oPlayer.y - 100);
		}
		
		//Return to idle
		state = BeastState_Idle;
	}
}