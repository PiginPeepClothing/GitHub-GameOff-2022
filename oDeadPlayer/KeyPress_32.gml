if (instance_exists(oText)) 
{
	room_restart();
	global.bossFight = false;
	global.iCamera.follow = oPlayer;
}