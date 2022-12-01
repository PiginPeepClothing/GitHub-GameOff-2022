function NineSliceBox(_textSprite, _x1, _y1, _x2, _y2, _index){
	var _size = sprite_get_width(_textSprite) / 3;
	var _width = _x2 - _x1;
	var _height = _y2 - _y1;
	
	//Draw Sprite Middle
	draw_sprite_part_ext(_textSprite, _index, _size, _size, 1, 1, _x1+_size, _y1+_size, _width-(_size*2), _height-(_size*2), c_white, 1);
	
	//Corners
	//Top Left
	draw_sprite_part(_textSprite, _index, 0, 0, _size, _size, _x1, _y1);
	//Top Right
	draw_sprite_part(_textSprite, _index, _size*2, 0, _size, _size, _x1+_width-_size, _y1);
	//Bottom Left
	draw_sprite_part(_textSprite, _index, 0, _size*2, _size, _size, _x1, _y1+_height-_size);
	//Top Left
	draw_sprite_part(_textSprite, _index, _size*2, _size*2, _size, _size, _x1+_width-_size, _y1+_height-_size);
	
	//Edges
	//Left Edge
	draw_sprite_part_ext(_textSprite, _index, 0, _size, _size, 1, _x1, _y1+_size, 1, _height-(_size*2), c_white, 1);
	//Right Edge
	draw_sprite_part_ext(_textSprite, _index, _size*2, _size, _size, 1, _x1+_width-_size, _y1+_size, 1, _height-(_size*2), c_white, 1);
	//Top Edge
	draw_sprite_part_ext(_textSprite, _index, _size, 0, 1, _size, _x1+_size, _y1, _width-(_size*2), 1, c_white, 1);
	//Bottom Edge
	draw_sprite_part_ext(_textSprite, _index, _size, _size*2, 1, _size, _x1+_size, _y1+_height-_size, _width-(_size*2), 1, c_white, 1);
}