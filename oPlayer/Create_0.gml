//Declare variables
state = PlayerState_Free;
lastState = state;

hSpeed = 0;
vSpeed = 0;
jumpSpeed = -10;
grav = .4;
walkSpeed = 3.5;

dashDist = 170;
dashSpeed = 10;
dashDelay = 0;

onGround = true;

fireDelay = 0;
firing = false;

currentDirection = 1;

hpMax = 6;
hp = hpMax;
ammoMax = 14;
ammo = ammoMax;

flash = 0;
hurtTimer = 0;
attackCoolDown = 0;

hitByAttack = ds_list_create();