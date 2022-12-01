//If player dies
if (hp <= 0)
{
	with (instance_create_layer(x, y, layer, oDeadPlayer))
	{
		if (oPlayer.currentDirection == 1) sprite_index = sPriestMan_DeadL;
		else sprite_index = sPriestMan_DeadR;
	}
	instance_destroy();
}