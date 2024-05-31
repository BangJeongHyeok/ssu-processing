
void setup_Scene_301_BG(DrawManager drawManager) {
  // var 초가집 = objectFactory.create("res/images/object/hut_front.png");
  // 초가집.setPosition(400, 300);
  // 초가집.setScale(0.13, 0.13);
  // drawManager.addDrawable(초가집);

  var 구름 = objectFactory.create("res/images/object/cloud_1.png");
  구름.setPosition(100, 100);
  구름.setScale(0.1, 0.1);
  drawManager.addDrawable(구름);
  // 구름 몇개 더 해야 될 듯

  var jar2 = objectFactory.create("res/images/object/Jar_2.png");
  jar2.setPosition(1170, 500);
  jar2.setScale(0.2, 0.2);
  drawManager.addDrawable(jar2);

  var jar1 = objectFactory.create("res/images/object/Jar_1.png");
  jar1.setPosition(1230, 500);
  jar1.setScale(0.2, 0.2);
  drawManager.addDrawable(jar1);

  drawManager.addDrawable(new Ground(-1, #BF763E));
}

public class Scene_301 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 302; }

  public void setup() {
    uiManager.dialogUi.enqueueAll(uiManager.getDialogForScene(this));
    uiManager.dialogUi.next();


    loadBackground("38", drawManager);
  
    setup_Scene_301_BG(drawManager);

    var boy = objectFactory.create(CharacterType.boy, CharacterPoseType.back);
    boy.setPosition(700, 500);
    boy.setScale(0.3, 0.3);
    drawManager.addDrawable(boy);

    var girl = objectFactory.create(CharacterType.girl, CharacterPoseType.back);
    girl.setPosition(800, 500);
    girl.setScale(0.3, 0.3);
    drawManager.addDrawable(girl);
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
