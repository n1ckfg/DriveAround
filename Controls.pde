void updateControls() {
  if (keyPressed) {
    switch(key) {
      case 's':
        proj.rotation.x -= proj.delta;
        break;
      case 'w':
        proj.rotation.x += proj.delta;
        break;
      case 'a':
        proj.rotation.y -= proj.delta;
        break;
      case 'd':
        proj.rotation.y += proj.delta;
        break;
      case 'q':
        proj.rotation.z -= proj.delta * 500;
        break;
      case 'e':
        proj.rotation.z += proj.delta * 500;
        break;
    }
  }
}
