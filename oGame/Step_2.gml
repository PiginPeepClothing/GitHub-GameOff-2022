//Pause the game
if (keyboard_check_pressed(vk_escape))
{
	global.gamePaused = !global.gamePaused;
	
	if (global.gamePaused)
	{
		with (all)
		{
			gamePausedImageSpeed = image_speed;
			image_speed = 0;
		}
	}
	else
	{
		with (all) image_speed = gamePausedImageSpeed;
	}
}

//Play background sound
if (global.bossFight) && (room = rTesting)
{
	if (audio_is_playing(sndBGMusic_2))
	{
		audio_stop_sound(sndBGMusic_2);
	}
	if (!audio_is_playing(sndBGMusic_1)) audio_play_sound(sndBGMusic_1, 1, true);
}
else if (room = rTesting)
{
	if (!audio_is_playing(sndBGMusic_2)) audio_play_sound(sndBGMusic_2, 1, true);
}
else if (room != rTesting)
{
	if (audio_is_playing(sndBGMusic_1)) audio_stop_sound(sndBGMusic_1);
}