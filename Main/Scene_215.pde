public class Scene_215 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 216; }
  public void setup() {
    uiManager.dialogUi.set(uiManager.getDialogDataById("215001"));


    var tiger = objectFactory.create(CharacterType.tiger, CharacterPoseType.thirsty);
    tiger.setPosition(width / 2 + 100, 500);
    tiger.setScale(0.6f, 0.6f);
    drawManager.addDrawable(tiger);


    var 우물 = objectFactory.create("res/images/object/well.png");
    우물.setPosition(200, 500);
    우물.setScale(0.4, 0.4);
    drawManager.addDrawable(우물);

    // 배경 나중에


  }
 
  public void draw() {
    pushStyle();
    
    
    drawManager.drawing();
    uiManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
