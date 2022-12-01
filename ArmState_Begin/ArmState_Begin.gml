function ArmState_Begin(){
if (!instance_exists(oText)) && (!instance_exists(oTextQue))
	{
		state = ArmState_Idle;
	}
}