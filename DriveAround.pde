Projector proj;

void setup() {
  size(800, 600, P3D);

  proj = new Projector(new PVector(width/2, height/2, 0));
}

void draw() {
  background(0);
  
  updateControls();
  
  proj.run();
}
