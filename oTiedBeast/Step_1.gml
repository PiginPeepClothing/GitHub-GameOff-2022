if (hp <= 0)
{
	with (instance_create_layer(x, y, layer, oDead)) sprite_index = sTiedBeast_Dead;
	instance_destroy();
}