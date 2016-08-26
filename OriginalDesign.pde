// Bryan Zin: Original Design - Slenderman
// AP Computer Science, Mr. Simon, Block 3

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

  stroke(102,51,0);
  line(400,100,400,0);

  noStroke();
  fill(255,255,0); // yellow ? 
  triangle(400,100, 350,125, 450,125); // light fixture above doorway

  textSize(24);

  fill(255,255,255);
  text("What's inside this door?", 30, 50);

  fill(255,255,255);
  text("Click to find out!", 30, 80);

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

  fill(0,0,0); // black sleeves
  rect(350,270, 20, 100, 10); // left arm

  fill(0,0,0); // black sleeves
  rect(430, 270, 20, 100, 10); // right arm

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

  // Door Movement & Lights

  if (x1<100) // Lighting from doorway
  {
    fill(255,255,255);
    quad(300,550, 500,550, 375,700, 125,700);

    
    arc(400,125, 20, 20, 0, 3.14);
  }

  if (x1<70)
  {
    x1 = 71;
  }

  if (x2<200)
  {
    x2 = 201;
  }

  if (x3<100)
  {
    x3 = 101;
  }

  if (x4<100)
  {
    x4 = 101;
  }

  if (x5<200)
  {
    x5 = 201;
  }

  if (x6<234)
  {
    x6 = 235;
  }
}
void mousePressed()
{
	redraw();
}