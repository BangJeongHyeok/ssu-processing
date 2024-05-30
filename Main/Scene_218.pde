public class Scene_218 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 219; }
  public void setup() {
    uiManager.dialogUi.enqueueAll(uiManager.getDialogForScene(this));
    uiManager.dialogUi.next();

    var tiger = objectFactory.create(CharacterType.tiger, CharacterPoseType.ricecake_03_02);
    tiger.setPosition(width / 2, height);
    tiger.setScale(1, 1);
    drawManager.addDrawable(tiger);

    var riceCake = objectFactory.create("res/images/object/ricecake_01_02.png");
    riceCake.setPosition(width / 2, height - 120);
    riceCake.setScale(2f, 2f);
    drawManager.addDrawable(riceCake);
  }
 
  public void draw() {
    pushStyle();
    
    drawManager.drawing();
    uiManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    if (uiManager.dialogUi.next()) {
      return;
    }
    loadNextScene();
  }
}
