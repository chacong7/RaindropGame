PVector mouse;   //makes the mouse itself a PVector
int count = 20;//count of raindrops to star
int score = 0;//score starting out (amount of drops u caught)
int score2 = 0;//amount u missed
PImage bucket;//bucket pic
ArrayList<Raindrop> r = new ArrayList<Raindrop>();//declare raindrop r as well as the ArrayList
catcher c;
// On your own, create an array of Raindrop objects instead of just one
// Use the array instead of the single object
// You can start out by just using the single Raindrop as you test


void setup() {
  size(1200, 800);
  mouse = new PVector();                //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  c = new catcher(6);
  r.add(new Raindrop(mouseX, mouseY));
  bucket = loadImage("bucket.png");
  bucket.resize(50,50);
}
void draw() {
  println(r.size());
  background(0);
  mouse.set(mouseX, mouseY);   
  r.add(new Raindrop(random(width), 0));
  fill(255,250,250);
  text(score,  550,200);
 
      fill(255,250,250);
   text(score2, 550,800);
text("catch as many as you can!!(keep up with it)",200,500);
textSize(30);
  //set value of mouse as mouseX,mouseY
  for (int i = r.size()-1; i >= 0; i--) {
  Raindrop a = r.get(i);
    a.fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
    a.display();      //display the raindrop
    if (a.isInContactWith(mouse)) {      //check to see if the raindrop is in contact with the point represented by the PVector called mouse
      a.reset();           //if it is, reset the raindrop
      score = score + 1;
    }
    if (a.loc.y > height + a.diam/2) {     //check to see if the raindrop goes below the bottom of the screen
      a.reset();//if it does, reset the raindrop
      r.remove(i);
       score2 = score2 + 1;
    }
  }
  c.display();
  c.move();
  if(score2 >= score*10){
    count = 0;
    background(0);
      fill(100,200,250);
    text("YOURE BEAT DOOD",200,200);
    score = 0;
}
}