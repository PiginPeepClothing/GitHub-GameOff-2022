//Declare variables
cam = view_camera[0];
follow = oPlayer;
viewWidthHalf = camera_get_view_width(cam) * .5;
viewHeightHalf = camera_get_view_height(cam) * .5;

xTo = xstart;
yTo = ystart;

shakeLength = 0;
shakeMagnitude = 0;
shakeRemain = 0;

treeLayer = layer_get_id("Background_Trees");
skyLayer = layer_get_id("Background_Sky");