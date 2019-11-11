public class Button implements Displayable {

    enum Type {
        IMAGE,
        TEXT
    }

    PVector position;
    PVector size;
    PImage buttonImage;
    String buttonText;

    PShape buttonShape;
    
    public Button (PVector size, PVector position, String imagePath) { // image button 
        this.size = size;
        this.position = position;
        this.buttonImage = loadImage(imagePath);
        buttonShape = createShape(GROUP);
    }

    public Button (PVector size, PVector position, String text) { // text button 
        this.size = size;
        this.position = position;
        this.buttonText = text;
        buttonShape = createShape(GROUP);
    }
    PShape getShape(){
        return buttonShape;
    }
    
    void updateShape(PShape newpattern){
    }

}
