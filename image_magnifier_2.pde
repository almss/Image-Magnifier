PImage img;
float scale = 5.0;

void setup() {
  size(1280, 860, P3D);
  img = loadImage("downloads/IMG_3297.jpg");
}

void draw() {
  background(img);
  
  for(int i = 0 ; i < 1280; i++){
    int x = i % 20;
    int y = i / 20;
    
  pushMatrix();
  PImage newGalaxy = img.get(mouseX, mouseY, 250, 200);
  image(newGalaxy, 0, 0);
  translate(x * 20, y * 20);
  rotate(radians(i));
  scale(sin(radians(i)) + 1.1);
  popMatrix();
  }
}
  
 void mouseDragged(){
  scale = map(mouseX,0,width,0.25,5.0);
}
