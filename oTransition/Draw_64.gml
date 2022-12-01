//Draw black bars
if (mode != TRANS_MODE.OFF)
{
	draw_set_color(c_black);
	draw_rectangle(0, 0, viewWidth, percent * viewHeightHalf, false);
	draw_rectangle(0, viewHeight, viewWidth, viewHeight - (percent * viewHeightHalf), false);
}