function ArmState_Idle(){
	changeIdleTimer--;
	
	//Move back to default spot if not there
	if (x != defaultXPos) x += (defaultXPos - x) / 15;
	if (y != defaultYPos) y += (defaultYPos - y) / 15;
	
	//Change state if timer goes down
	if (changeIdleTimer < 0)
	{
		state = ArmState_Attack;
	}
}