class Raindrop {
  PVector loc, vel, acc;
  int diam;

  Raindrop(float x, int y) {
    diam = 25;
    loc = new PVector(x,y);
    vel = PVector.random2D();
    acc = new PVector(0,.2);  
    vel.mult(.1);
}
  void display () {
    fill(0, 200, 255);
    noStroke();
    ellipse(loc.x,loc.y,diam,diam);
  }
  void fall () {
    loc.add(vel);
    vel.add(acc);
}
  void reset () {
    loc.y = 0;
    loc.x = random(0,width);
    vel = new PVector (0,0);
    vel.add(acc);
 }
  boolean isInContactWith(PVector heh) {
  return heh.dist(loc)<=diam;
  }
}