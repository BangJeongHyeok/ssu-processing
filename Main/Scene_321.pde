public class Scene_321 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 322; }
  public void setup() {
    uiManager.dialogUi.set(uiManager.getDialogDataById("321001"));

    // 배경, 나무, 도끼 필요
    
    var rope = objectFactory.create("compressedRes/images/objects/rope_new.png");
    rope.setPosition(100, 50);
    rope.setScale(0.03, 0.03);
    drawManager.addDrawable(rope);

    var boy = objectFactory.create(ObjectType.boy, ObjectPoseType.climb_rope);
    boy.setPosition(80, 100);
    boy.setScale(0.1, 0.1);
    drawManager.addDrawable(boy);

    var girl = objectFactory.create(ObjectType.girl, ObjectPoseType.climb_rope);
    girl.setPosition(120, 100);
    girl.setScale(-0.1, 0.1);
    drawManager.addDrawable(girl);

    var tiger = objectFactory.create(ObjectType.tiger, ObjectPoseType.pray);
    tiger.setPosition(500, 500);
    tiger.setScale(0.3, 0.3);
    drawManager.addDrawable(tiger);
  }
 
  public void draw() {
    pushStyle();
    
    drawGradientBackground();
    drawManager.drawing();
    uiManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
