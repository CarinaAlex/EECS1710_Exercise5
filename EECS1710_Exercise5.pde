import processing.sound.*;
AudioIn input;
Amplitude analyzer;

void setup() {
  size(400, 400);

  input = new AudioIn(this, 0);
  input.start();
  analyzer = new Amplitude(this);
  analyzer.input(input);
  
}

void draw() {
  background(155, 20, 30);

  float vol = analyzer.analyze();
  fill(10, 22, 30);
  stroke(30, 20, 40);

  rect(width/2, height/2, 20+vol*200, 20+vol*200);
}

// Resources: https://medium.com/measuring-the-great-indoors/sounds-speech-in-processing-df1e908940c
