//Global Variables
int appWidth, appHeight, fontSize;
String title = "Wahoo", footer = "drip";
float titleX, titleY, titleWidth, titleHeight;
float footerX, footerY, footerWidth, footerHeight;
PFont titleFont;
color purple=#2C08FF, resetDefaultInk=#FFFFFF; //Not night mode friendly
//
size(500, 600); //Portrait
appWidth = width;
appHeight = height;
//Copy the Display Algorithm Later
//
//Population
titleX = appWidth * 1/4;
titleY = appHeight * 1/10;
titleWidth = appWidth * 1/2;
titleHeight = appHeight * 1/10;
footerX = appWidth * 1/4;
footerY = appHeight * 8/10;
footerWidth = appWidth * 1/2;
footerHeight = appHeight * 1/10;
//
//Text Setup, single executed code
//Font from OS (Operating System)
String[] fontList = PFont.list(); //To list all fonts available on OS
printArray(fontList); //For listing all possible fonts
titleFont = createFont("Harrington", 55); //Verify the font exists in Processing.JAVA
// Tools / Create Font / Find Font / Do not press "OK", known bug
//
//Layout our text space and typographical features
rect(titleX, titleY, titleWidth, titleHeight);
rect(footerX, footerY, footerWidth, footerHeight);
//
//Text Draw: Repeatedly Executed Code
fill(purple); //Ink
textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
//Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
fontSize = 50;
textFont(titleFont, fontSize);
text( title, titleX, titleY, titleWidth, titleHeight);
textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
//Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
fontSize = 40;
text( footer, footerX, footerY, footerWidth, footerHeight);
fill(resetDefaultInk);
