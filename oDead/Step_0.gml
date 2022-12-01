if (sprite_index != sTiedBeast_Dead)
{
	//Vertical collision
	vSpeed += grav;

	if (place_meeting(x, y + vSpeed, oWall))
	{
		while(!place_meeting(x, (y + sign(vSpeed)), oWall))
		{
			y += sign(vSpeed);
		}
		vSpeed = 0;
	}

	y += vSpeed;
}