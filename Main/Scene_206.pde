public class Scene_206 extends BaseScene {
  public void setup() {
    println("Scene_206 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_206 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_206 : mousePressed");
  }
}

