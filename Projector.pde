class Projector {

  PVector position;
  PVector rotation;
  float delta = 0.00001;
  
  Projector() {
    position = new PVector(0,0,0);
    rotation = new PVector(0,0,0);
  }

  Projector(PVector p) {
    position = p;
    rotation = new PVector(0,0,0);
  }
  
  Projector(PVector p, PVector r) {
    position = p;
    rotation = r;
  }
  
  void update() {
  }
  
  void draw() {
    rectMode(CENTER);
    pushMatrix();
    translate(position.x, position.y, position.z);
    rotateXYZ(rotation.x, rotation.y, rotation.z);
    rect(0,0,80,80);
    translate(0, 0, 20);
    rect(0,0,100,100);
    popMatrix();
  }
  
  void run() {
    update();
    draw();
  }
  
  void rotateXYZ(float x, float y, float z) {
    x = calcNewRotation(position, new PVector(1,0,0), radians(x)).x;
    y = calcNewRotation(position, new PVector(1,0,0), radians(y)).y;
    z = calcNewRotation(position, new PVector(1,0,0), radians(z)).z;
    rotateX(x);
    rotateY(y);
    rotateZ(z);
  }
  
  //Example of rotating PVector about a directional PVector
  PVector calcNewRotation(PVector v, PVector r, float a) {
    Quaternion Q1 = new Quaternion(0, v.x, v.y, v.z);
    Quaternion Q2 = new Quaternion(cos(a / 2), r.x * sin(a / 2), r.y * sin(a / 2), r.z * sin(a / 2));
    Quaternion Q3 = Q2.mult(Q1).mult(Q2.conjugate());
    return new PVector(Q3.X, Q3.Y, Q3.Z);
  }
    
}
