//Execute current nun state
if (!global.gamePaused) script_execute(state);

onGround = (place_meeting(x, y + 1, oWall));