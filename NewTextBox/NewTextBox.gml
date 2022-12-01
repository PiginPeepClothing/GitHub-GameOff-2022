function NewTextBox(_message, _fullsize) 
{
 var _obj;
 
 if (instance_exists(oText)) _obj = oTextQue; else _obj = oText;
 with (instance_create_layer(0, 0, "lManagers", _obj))
 {
	 textMessage = _message;
	 if (_fullsize) x1Target = 0;
	 if (instance_exists(other)) originInstance = other.id else originInstance = noone;
 }
 
 with (oPlayer)
 {
	 if (state != PlayerState_Locked)
	 {
		 lastState = state;
		 state = PlayerState_Locked;
	 }
 }
}