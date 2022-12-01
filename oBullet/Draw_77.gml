//Destroy bullet if touch object
if (place_meeting(x, y, oWall)) instance_destroy();

if (abs(global.iCamera.x - x) > 750) instance_destroy();