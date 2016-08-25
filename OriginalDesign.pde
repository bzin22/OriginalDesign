// Bryan Zin: Original Design - Slenderman
// AP COmputer Science, Mr. Simon, Block 3

int x1 = 300; // doorframe
int x2 = 425; // top right
int x3 = 325; // top left
int x4 = 325; // bottom left
int x5 = 425; // bottom right
int x6 = 475; // doorknob 

void setup()
{
  size(1000,1000);
  noLoop();
}
void draw()
{
  background(0,0,0); // black background
  fill(64,64,64); // gray
  rect(300,200,200,350); // behind the door

  fill(255,255,255); // white
  ellipse(400,250,40,40); // face

  fill(0,0,0); // black tuxedo 
  rect(360,270,80,140); // body

  fill(255,0,0); // red tie
  triangle(390,270, 410,270, 400,320); // tie

  fill (32,32,32); // gray slacks
  rect(360,410, 30, 100); // left leg

  fill(32,32,32); // gray slacks
  rect(410, 410, 30, 100); // right leg

  fill(10,10,10); // black sleeves
  quad(360,270, 360,380, 345,380, 345,300); // left arm

  fill(10,10,10); // black sleeves
  quad(440,270, 455,300, 455, 380, 440,380); // right arm

  fill(102, 51, 0);
  rect(x1,200,200,350); // door frame
  x1 = x1 - 50;
  
  fill(0,0,0);
  rect(x2,250, 50, 90); // top right
  x2 = x2 - 50;

  fill(0,0,0);
  rect(x3, 250,50, 90); // top left
  x3 = x3 - 50;

  fill(0,0,0);
  rect(x4,400, 50, 90); // bottom left
  x4 = x4 - 50;

  fill(0,0,0);
  rect(x5,400, 50, 90); // bottom right
  x5 = x5 - 50;

  fill(153,153,0);
  ellipse(x6,375,20,20); // doorknob
  x6 = x6 - 50;

  if (x1<100) // Lighting
  {
    fill(255,255,255);
    quad(300,550, 500,550, 375,700, 125,700);
  }
}
void mousePressed()
{
	redraw();
}