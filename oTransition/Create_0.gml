viewWidth = display_get_gui_width();
viewHeight = display_get_gui_height();
viewHeightHalf = viewHeight * .5;

enum TRANS_MODE
{
	OFF,
	NEXT,
	GOTO,
	RESTART, 
	INTRO
}
mode = TRANS_MODE.INTRO;
percent = 1;
target = room;