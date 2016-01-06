class catcher {
  PVector loc, vel, acc;
  int diam;
  
  catcher(int tDiam) {
    diam = tDiam;
    loc = new PVector(mouseX, mouseY);
  }
  void display() {

    image(bucket, mouseX , mouseY);
  }
  void move() {
    loc.set(mouseX,mouseY);
}
}