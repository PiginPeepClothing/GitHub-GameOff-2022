wait--;
//Create text
if (wait == 0)
{
	//Opening game text
	NewTextBox("It was a dark, and gloomy night. Every soul snuggled peacefully in their bed.\nYou took this time to get some work done, secluded in the darkness of the church.", true);
	NewTextBox("Focused on your work, you're roused by a loud banging outside.\nYou rise from your desk to investigate.", true);
	NewTextBox("Peering out the window, you see a commotion outside.\nYou can feel evil seeping through the very window.", true);
	NewTextBox("You decide to investigate, grabbing your pair of holy hand guns,\nyou feel you're gonna need them.", true);
}
//Transition to game when text is done
if (wait < 0)
{
	if (!instance_exists(oText)) && (!instance_exists(oTextQue)) SlideTransition(TRANS_MODE.GOTO, rTesting);
}
