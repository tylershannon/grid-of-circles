float countX=10;
float countY=10;
float spaceX=0; //spacing distance between points in X direction
float spaceY=0;//spacing distance between points in Y direction
float radius=10; //radius of circles
float locationX=0;
float locationY=0;



void setup() {
  size(900, 600);
  fill(0);


}

void draw() {
  //set background color to refresh each loop
  background(#ffffff);

  //setup variables
  spaceX=(900/30);
  spaceY=(600/25);
  locationX=(0);
  locationY=(0);

  //setup grid circle actions
  for (float y=locationY; y<(600); y+=spaceY) {
    for (float x=locationX; x<(900); x+=spaceX) {
    float size=dist(mouseX, mouseY, x, y);
    size = size/spaceX*(2);
    ellipse(x, y, size, size);
    }
  }
}
