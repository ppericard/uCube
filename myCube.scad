include <uCube.scad>

//uCube();

//uFace();

// Default values for the cube parameter
myScrew	= Screw( screwR = 1.75, capR = 3, capH = 2.5, insertH = 5, insertR = 2 );
myCubeSize	= CubeSize( size = 40, d = 7, faceGap = 0.4, screw = myScrew );

uCube(myCubeSize, myScrew);
//uFace(myCubeSize);


