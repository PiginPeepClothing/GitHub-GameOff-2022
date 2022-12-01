//Vertical collision
vSpeed += grav;
onGround = place_meeting(x, y + 1, oWall);

if (place_meeting(x, y + vSpeed, oWall))
{
	while(!place_meeting(x, (y + sign(vSpeed)), oWall))
	{
		y += sign(vSpeed);
	}
	vSpeed = 0;
}

y += vSpeed;