function ArmState_Defeated(){
	//Go to final resting spot
	if (x != finalX) x += (finalX - x) / 55;
	if (y != defaultYPos) y += (defaultYPos - y) / 55;
}