//Player State when player can freely run, jump, shoot, etc.
function PlayerState_Free(){
	//Assign keys to mechanics + get player input
	if (oGame.domHand == 1)
	{
		keyLeft = keyboard_check(vk_left);
		keyRight = keyboard_check(vk_right);
		keyJump = keyboard_check_pressed(vk_space);
		keyShoot = keyboard_check_pressed(ord("W")) || keyboard_check(ord("W"));
		keyDash = keyboard_check_pressed(ord("E"));
		keyInteract = keyboard_check_pressed(ord("Q"));
		keyReload = keyboard_check_pressed(ord("R"));
		keyKick = keyboard_check_pressed(ord("T"));
	}
	else
	{
		keyLeft = keyboard_check(ord("A"));
		keyRight = keyboard_check(ord("D"));
		keyJump = keyboard_check_pressed(vk_space);
		keyShoot = keyboard_check_pressed(vk_up) || keyboard_check(vk_up);
		keyDash = keyboard_check_pressed(vk_right);
		keyInteract = keyboard_check_pressed(vk_left);
		keyReload = keyboard_check_pressed(vk_down);
		keyKick = keyboard_check_pressed(vk_control);
	}
	
	//Determine player direction
	mask_index = sPriestMan_IdleR;
	onGround = place_meeting(x, y + 1, oWall);
	var dir = keyRight - keyLeft;
	if (dir != 0) currentDirection = dir;
	hSpeed = dir * walkSpeed;
	vSpeed += grav;
	attackCoolDown--;
	
	if (onGround) && (keyJump)
	{
		vSpeed = jumpSpeed;
		sprite_index = 0;
	}
	
	//Detect collision
	//Horizontal collision
	if (place_meeting(x + hSpeed, y, oWall))
	{
		while(!place_meeting((x + sign(hSpeed)), y, oWall))
		{
			x += sign(hSpeed);
		}
		hSpeed = 0;
	}
	
	//Vertical collision
		if (place_meeting(x, y + vSpeed, oWall))
	{
		while(!place_meeting(x, (y + sign(vSpeed)), oWall))
		{
			y += sign(vSpeed);
		}
		vSpeed = 0;
	}
	
	//Allow player to fire gun
	fireDelay --;
	if (keyShoot && onGround && (fireDelay < 0)) 
	{
		firing = true;
		if (ammo > 0)
		{
			PlayerShoot();
			ammo--;
		}
		else
		{
			if (!audio_is_playing(sndEmptyGun)) audio_play_sound(sndEmptyGun, 1, false);
		}
	}
	else if (!keyShoot) firing = false;
	
	//Allow player to kick
	if (keyKick) && (attackCoolDown <= 0)
	{
		attackCoolDown = 10;
		state = PlayerState_Attack;
	}
	
	//Allow player to reload
	if (keyReload) && (onGround)
	{
		image_index = 0;
		state = PlayerState_Reload;
	}
	
	//Animate Player
	AnimatePlayer();
	
	//Move player
	x += hSpeed;
	y += vSpeed;
	
	dashDelay --;
	//Change player state
	if ((keyDash) && (onGround) && (dashDelay < 0))
	{
		dashDistanceRemaining = dashDist;
		state = PlayerState_Dash;
	}
}