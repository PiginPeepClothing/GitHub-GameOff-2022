function ArmState_Attack(){
	var _onGround = place_meeting(x, y - 150, oWall);
	
	if (instance_exists(oPlayer)) && (slamX == 0) slamX = oPlayer.x;
	
	//Move to slam position
	if (x != slamX) && (!slam) x += (slamX - x) / 15;
	if (y != slamY) && (!slam) y += (slamY - y) / 15;
	
	//Slam hand down once in place
	if (y < slamY + 10) slam = true;
	if (slam) y += slamSpeed;
	
	if (slam) && (_onGround)
	{
		slam = false;
		changeIdleTimer = irandom_range(200, 300);
		state = ArmState_Idle;
		slamX = 0;
	}
}