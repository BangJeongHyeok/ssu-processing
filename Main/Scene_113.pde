public class Scene_113 extends BaseScene {
  public void setup() {
    println("Scene_113 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_113 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_113 : mousePressed");
  }
}
