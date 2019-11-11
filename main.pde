Toros toros;
Slider slider;
boolean interactionEnabled = false;
int sliderValue = 20;
PImage img;

void setup() {
  size(384, 512, P3D);
  img = loadImage("NVsmall.png");
  background(img);
  // background(#525252);
  toros = new Toros(5, 25, 10); // 20, 100, 30 are standard
  PVector sliderPosition = new PVector(120, height - 50);
  slider = new Slider(sliderPosition, 20, "Delta", 20, 20, new PVector(width - 140, 0));
}

void draw() {
  background(img);
  sliderValue = slider.drawSlider();
  toros.setDelta(sliderValue);
  toros.updateShape(interactionEnabled);
}

/*void mouseDragged() {
  println("I'm dragged");
  slider.mouseDragged();
}*/

void mouseMoved() {
  if(mousePressed && (mouseButton == LEFT)) {
    slider.mouseDragged();
  } 
}

void keyPressed(){
    if(key == CODED) { 
        if (keyCode == UP) { 
            toros.increaseDelta();
        } 
        else if (keyCode == DOWN) {
            toros.decreaseDelta();
        } 
    } else if(key == 'i') {
    switchInteraction();
  }

}

void switchInteraction() {
  if(interactionEnabled)
    interactionEnabled = false;
  else 
    interactionEnabled = true;
}
