function SlideTransition(_mode, _targetRoom){
	with (oTransition)
	{
		mode = _mode;
		if (_targetRoom != "no") target = _targetRoom;
	}
}