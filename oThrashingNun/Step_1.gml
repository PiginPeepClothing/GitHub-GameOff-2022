if (hp <= 0)
{
	with (instance_create_layer(x, y, layer, oDead))
	{
		if (oThrashingNun.currentDirection == 1) sprite_index = sThrashingNun_DeadR;
		else sprite_index = sThrashingNun_DeadL;
	}
	instance_destroy();
}