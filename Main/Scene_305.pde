public class Scene_305 extends BaseScene {
  public void setup() {
    println("Scene_305 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_305 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_305 : mousePressed");
  }
}

