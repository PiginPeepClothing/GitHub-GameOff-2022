randomize();

//Declare game variables
global.gamePaused = false;
global.bossFight = false;

//Optional variables
domHand = 1;
global.textSpeed = .50;

//Create managers
global.iCamera = instance_create_layer(x, y, "lManagers", oCamera);

resolutionW = RESOLUTION_W;
resolutionH = RESOLUTION_H;
surface_resize(application_surface, resolutionW, resolutionH);
//SlideTransition(TRANS_MODE.GOTO, rOpening);