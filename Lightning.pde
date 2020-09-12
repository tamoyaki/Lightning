int startX = (int)(Math.random()*300);
int startY = 0;
int endX = (int)(Math.random()*300);
int endY = 50;

void setup()
{
  size(300,300);
  background(140,140,140);
  strokeWeight(2);
  stroke(0);
}

void draw()
{
  background(140);
//lightning
  frameRate(12);
  stroke (30,256,256);
    while(endY<300)
     {
       endY = startY +(int)(Math.random()*8);
       endX = startX +(int)(Math.random()*9)-(int)(Math.random()*9);
       line(startX,startY,endX,endY);
       startY = endY;
       startX = endX;
     }
//clouds - maybe animate? https://www.youtube.com/watch?v=jLuMjfxgBpc
  noStroke();
  fill(80);
    ellipse (0,0,100,100);
    ellipse (50,30,50,50);
    ellipse (100,20,120,100);
    ellipse (160,20,50,70);
    ellipse (200,0,80,100);
    ellipse (250,30,80,80);
    ellipse (300,0,100,120);
}

void mousePressed()
{
  startX = (int)(Math.random()*300);
  startY = 0;
  endX = (int)(Math.random()*300);
  endY = 50;
}
