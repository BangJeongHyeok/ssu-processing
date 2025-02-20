public class Scene_ObjectTest extends BaseScene {
  ShapeObject tiger;
  public void setup() {
    println("Scene_ObjectTest : setup");
    tiger = objectFactory.create(ObjectType.tiger, ObjectPoseType.front);
    tiger.setPosition(200, 200);
    tiger.scale.x = 0.2;
    tiger.scale.y = 0.2;
    drawManager.addDrawable(tiger);
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    //println("Scene_ObjectTest : draw");
    drawManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_ObjectTest : mousePressed");
  }
}
