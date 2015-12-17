class catcher {
  PVector loc, vel, acc;
  int diam;
  
  catcher(float tDiam) {
    tDiam = 50;
    loc = new PVector(mouseX, mouseY);
  }
  void display() {
    fill(0);
    noStroke();
    ellipse(loc.x,loc.y,diam,diam);
  }
  void move() {
    loc.set(mouseX,mouseY);
}
}