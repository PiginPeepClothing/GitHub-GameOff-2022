//Declare Variables
state = NunState_Idle;
lastState = state;

hSpeed = 0;
vSpeed = 0;
grav = .4;
walkSpeed = .5;
runSpeed = 5;

viewRange = 500;

raging = false;
attacking = false;
onGround = true;

hurtTimer = 0;
changeIdleTimer = 0;
rageTimer = 0;

currentDirection = 1;

hp = 7;
flash = 0;