public class Scene_321 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 322; }
  public void setup() {
    uiManager.dialogUi.enqueueAll(uiManager.getDialogForScene(this));
    uiManager.dialogUi.next();

    loadBackground("58", drawManager);

    // 배경, 나무, 도끼 필요
    
    var rope = objectFactory.create("res/images/object/rope_strong.png");
    rope.setPosition(255, -240);
    rope.setScale(0.125, 0.125);
    drawManager.addDrawable(rope);

    var boy = objectFactory.create(CharacterType.boy, CharacterPoseType.climb_rope);
    boy.setPosition(225, 100);
    boy.setScale(0.15, 0.15);
    drawManager.addDrawable(boy);

    var girl = objectFactory.create(CharacterType.girl, CharacterPoseType.climb_rope);
    girl.setPosition(285, 100);
    girl.setScale(-0.15, 0.15);
    drawManager.addDrawable(girl);

    var tiger = objectFactory.create(CharacterType.tiger, CharacterPoseType.pray);
    tiger.setPosition(580, 390);
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
