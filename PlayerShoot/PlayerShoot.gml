function PlayerShoot(){
	fireDelay = 22;
	var fireDir = oPlayer.currentDirection;
	audio_play_sound(sndShoot, 1, false);
	with (instance_create_layer((x + (17 * fireDir)), (y - 105), "lBullets", oBullet))
	{
		speed = 30;
		if (fireDir == 1) 
		{
			direction = 0;
			image_angle = direction;
		}
		else
		{
			direction = 180;
			image_angle = direction;
		}
	}
}