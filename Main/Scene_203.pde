
public class Scene_203 extends BaseScene {
  @Override
  public int getPreviousScene() { return 203; }

  @Override
  public int getNextScene() { return 204; }
  public void setup() {
    uiManager.dialogUi.set(uiManager.getDialogDataById("203001"));

    var storyboard = objectFactory.create("compressedRes/images/storyboard/203.png");
    storyboard.setPosition(width / 2, height / 2);
    drawManager.addDrawable(storyboard);

    Scene_202_bg_setup(drawManager);

    var boy = objectFactory.create(CharacterType.boy, CharacterPoseType.back);
    boy.setPosition(300, 600);
    boy.setScale(0.6f, 0.6f);
    drawManager.addDrawable(boy);

    var girl = objectFactory.create(CharacterType.girl, CharacterPoseType.back);
    girl.setPosition(450, 650);
    girl.setScale(0.6f, 0.6f);
    drawManager.addDrawable(girl);

    var tiger = objectFactory.create(CharacterType.tiger_mom, CharacterPoseType.big);
    tiger.setPosition(800, 400);
    tiger.setScale(0.5f, 0.5f);
    drawManager.addDrawable(tiger);

    // 배경 이미지 위에 문 열린 것처럼 보이도록 네모 그려야 함.
  }
 
  public void draw() {
    pushStyle();
    noStroke();
    
    drawManager.drawing();
    uiManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
