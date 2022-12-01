//Draw UI sidebar
draw_sprite(sUISidebar, 0, 0, 0);

//Determine player health
if (instance_exists(oPlayer))
{
	var _playerHealth = oPlayer.hp;
	var _playerMaxHealth = oPlayer.hpMax;
	var _playerHealthFrac = frac(_playerHealth);

	_playerHealth -= _playerHealthFrac;
}
else 
{
	var _playerHealth = 0
	var _playerMaxHealth = 6;
	var _playerHealthFrac = frac(_playerHealth);

	_playerHealth -= _playerHealthFrac;
}

//Draw player health
for (var i = 1; i <= _playerMaxHealth; i++)
{
	var _imageIndex = (i > _playerHealth);
	if (i == _playerHealth + 1)
	{
		_imageIndex += (_playerHealthFrac > 0);
		_imageIndex += (_playerHealthFrac > .25);
		_imageIndex += (_playerHealthFrac > .5);
	}
	
	draw_sprite(sHearts, _imageIndex, 20 + ((i - 1) * 30), 720);
}

//Determine player bullets
if (instance_exists(oPlayer))
{
	var _playerAmmo = oPlayer.ammo;
	var _playerMaxAmmo = oPlayer.ammoMax;
}
else
{
	var _playerAmmo = 0;
	var _playerMaxAmmo = 14;
}

//Draw bullet number
for (var i = 1; i <= _playerMaxAmmo; i++)
{
	var _bulletIndex = (i > _playerAmmo);
	draw_sprite(sBulletCounter, _bulletIndex, 20 + ((i - 1) * 10), 705);
}