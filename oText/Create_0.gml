//Declare starting points of text box
resolutionW = RESOLUTION_W;
resolutionH = RESOLUTION_H;
x1 = resolutionW * .5;
y1 = resolutionH - 150;
x2 = resolutionW * .5;
y2 = resolutionH;

//Declare end points of text box
if (room == rTesting) x1Target = 260;
else x1Target = 0;
x2Target = resolutionW;

lerpProgress = 0;
textProgress = 0

background = 0;