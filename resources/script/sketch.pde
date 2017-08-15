void setup() {
  size(900, 600);
  fill(0);
}

void draw() {
  //-------- set background color to refresh each loop --------
  background(#ffffff);

  //-------- setup variables --------
  float spaceX=(900/30);
  float spaceY=(600/25);
  float locationX=(0);
  float locationY=(0);

  //-------- setup grid circle actions --------
  for (float y=locationY; y<(600); y+=spaceY) {
    for (float x=locationX; x<(900); x+=spaceX) {
    float size=dist(mouseX, mouseY, x, y);
    size = size/spaceX*(2);
    ellipse(x, y, size, size);
    }
  }
}
