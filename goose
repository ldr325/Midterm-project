PImage goose;

void setup() {
  size(4032,3024);
  goose = loadImage("IMG_7913.jpg");
}

void draw() {
  image(goose,0,0);
  loadPixels();
  
  goose.loadPixels();
  for (int y = 0; y < height; y++) {
    for(int x = 0; x < width; x++) {
      int loc = x+y*width;
      float b = brightness(goose.pixels[loc]);
      if (b>100) {
        pixels[loc] = color(255);
      } else {
        pixels[loc] = color(0);
      }
      
      
    }
  }
  updatePixels();
  save("goose.jpg");
}
      
