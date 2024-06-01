// 이벤트 함수는 모두 이 파일에서 정의한다. 같은 이벤트 함수를 여러 파일에서 정의할 수 없기 때문이다.
// 전역 변수도 이 파일에서 정의한다.

import static java.awt.event.KeyEvent.*;
//import processing.javafx.*;
float deltaTime = 0;
int lastMillis = 0;

void setup() {
  //size(1280, 720, FX2D);
  size(1280, 720, P2D);
  sceneManager.loadScene(new Scene_222());
  //sceneManager.loadScene(new Scene_ParticleTest());
  //sceneManager.loadScene(new Scene_CameraManagerTest());
  //postProcessManager.addGrain(new PVector(0.3, 0.6, 0.3));
  fontManager.setup();
}

void draw() {
  updateDeltaTime();

  background(255);
  BaseScene scene = sceneManager.getCurrentScene();

  cameraManager.draw(); 
  sceneManager.Draw();

  postProcessManager.draw();
  image(get(), 0, 0, width, height);
}

void updateDeltaTime() {
  int currentMillis = millis();
  deltaTime = (currentMillis - lastMillis) / 1000.0;
  lastMillis = currentMillis;
}

void mousePressed() {
  BaseScene scene = sceneManager.getCurrentScene();
  if (scene != null) {
    scene.mousePressed();
  } else {
    println("scene is null!");
  }
}

void mouseReleased() {
  BaseScene scene = sceneManager.getCurrentScene();
  if (scene != null) {
    scene.mouseReleased();
  } else {
    println("scene is null!");
  }
}

void keyPressed() {
  int backspace = 8;
  int plusKeycode = 61;
  int minusKeycode = 45;
  if (keyCode == backspace) {   
    sceneManager.loadScene(new Scene_Intro());
  }
  if (keyCode == plusKeycode) {   
    sceneManager.getCurrentScene().loadNextScene();
  }
  if (keyCode == minusKeycode) {   
    sceneManager.getCurrentScene().loadPreviousScene();
  }

  BaseScene scene = sceneManager.getCurrentScene();
  if (scene != null) {
    scene.keyPressed();
  } else {
    println("scene is null!");
  }
}
