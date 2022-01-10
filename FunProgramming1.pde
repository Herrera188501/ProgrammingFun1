/** Copy and Paste the code here 
  * If your code contains more than one class, 
  * be sure to paste the second class at the end 
  */


float[] x = new float[100];
float[] y = new float[100];
float[] speed = new float[100];

void setup() {
  size(600, 500);
  background(0);
  stroke(255);
  strokeWeight(5);

  int i = 0;
  while(i < 100) {  
    x[i] = random(0, width);
    y[i] = random(0, height);
    speed[i] = random(1, 10);
    i = i + 1;
  }
}

void draw() {
  background(0);
  
  int i = 0;
  while(i < 100) {
    point(x[i], y[i]);
  
    x[i] = x[i] - speed[i];
    if(x[i] < 0) {
      x[i] = width;
    }
    i = i + 1;
  }
}
