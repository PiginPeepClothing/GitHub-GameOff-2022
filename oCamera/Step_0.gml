//Update camera destination
if (instance_exists(follow))
{
	xTo = follow.x - 150;
	yTo = follow.y;
}

//Update camera position
x += (xTo - x) / 15;
y += (yTo - y) / 15;

//Keep camera in room
x = clamp(x, viewWidthHalf, (room_width - viewWidthHalf));
y = clamp(y, viewHeightHalf, (room_height - viewHeightHalf));

//Screenshake
x += random_range(-shakeRemain, shakeRemain);
y += random_range(-shakeRemain, shakeRemain);

shakeRemain = max(0, shakeRemain - ((1/shakeLength) * shakeMagnitude));

camera_set_view_pos(cam, x - viewWidthHalf, y - viewHeightHalf);

//Parallax background
layer_x(treeLayer, x / 2);
layer_x(skyLayer, x);