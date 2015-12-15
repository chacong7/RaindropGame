class Raindrop {
  PVector loc, vel, acc;
  int diam;
  
  Raindrop(float x, int y) {
    diam = 10;
    loc = new PVector(x,y);
    vel = PVector.random2D();
    acc = new PVector(0,.2);  
    vel.mult(10);
}
  void display () {
    fill(70,130,180);
    noStroke();
    ellipse(loc.x,loc.y,diam,diam);
  }
  void fall () {
    loc.add(vel);
    vel.add(acc);
}
  void reset () {
    loc.y = 0;
 }
  boolean isInContactWith(mouse)
  return.a.dist
}