//Animate textbox opening
lerpProgress += (1 - lerpProgress) / 50;
textProgress += global.textSpeed;

x1 = lerp(x1, x1Target, lerpProgress);
x2 = lerp(x2, x2Target, lerpProgress);

//Player pressed space bar
if (keyboard_check_pressed(vk_space))
{
	var _messageLength = string_length(textMessage);
	//Destroy textbox if message is done
	if (textProgress >= _messageLength)
	{
		instance_destroy();
		if (instance_exists(oTextQue)) with (oTextQue) ticket--;
		else
		{
			with (oPlayer) state = lastState;
		}
	}
	//Let player skip through textbox animation
	else if (textProgress > 2) textProgress = _messageLength;
}