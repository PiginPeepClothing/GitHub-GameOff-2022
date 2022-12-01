if (instance_exists(oThrashingNun)) with (oThrashingNun) instance_destroy();
if (instance_exists(oTiedBeast)) with (oTiedBeast) instance_destroy();

oSkull.state = SkullState_Begin;
oArm.state = ArmState_Begin;
global.iCamera.follow = 13000;
NewTextBox("Stop right there.", false);
NewTextBox("I can't let you go any further...", false);
NewTextBox("I'm sorry...", false);

global.bossFight = true;

instance_destroy();