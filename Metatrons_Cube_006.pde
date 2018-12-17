// Metatron’s Cube 
// by Rupert Russell
// December 17 2018
// https://www.universallifetools.com/2015/09/archangels-dna-wave-x-wave-love/
// Code on Github at: https://github.com/rupertrussell/Metatron-s-Cube-001
// artwork on Redbubble at: https://www.redbubble.com/people/rupertrussell/works/35747373-metatron-s-cube-002

int scale = 1200; 
float[] x = new float[14];
float[] y = new float[14];
int count = 0;
int sWeight = 21;

void setup() {
  size(6500, 6500); 
  background(255);
  noLoop();
  noFill();
  strokeWeight(sWeight);
  strokeCap(SQUARE);
}

void draw() {
  translate(width/2, height/2);
  ellipse(0, 0, scale, scale);  // inner circle


  // calculate 6 points around the inner circle
  double step = 2 * PI/6; // see note 1
  float r = scale ;
  rotate( radians(90));
  for (float theta = 0; theta < 2 * PI; theta += step) {

    x[count] = r * cos(theta);
    y[count] = r * sin(theta);
    ellipse(x[count], y[count], scale, scale);
    count ++;
  }

  // ellipse(0, 0, scale * 5, scale * 5);  // outer guide circle
  rotate( radians(90));
  // calculate 6 points around the outer circle

  step = 2 * PI/6; // see note 1
  r = scale * 2 ;
  rotate( radians(90));
  for (float theta = 0; theta < 2 * PI; theta += step) {
    x[count] = r * cos(theta);
    y[count] = r * sin(theta);
    ellipse(x[count], y[count], scale, scale);
    count ++;
  }


  // stroke(255, 0, 0);
  // outer hexagon
  for (int counter = 7; counter < 13; counter ++) {
    line(x[counter], y[counter], x[counter +1], y[counter +1]);
  }


  // inner hexagon
  for (int counter = 0; counter < 6; counter ++) {
    line(x[counter], y[counter], x[counter +1], y[counter +1]);
  }

  // 3 connecting lines
  line(x[7], y[7], x[10], y[10]); // vertical center line
  line(x[8], y[8], x[11], y[11]); // diagnoal line
  line(x[9], y[9], x[12], y[12]); // diagnoal line

  //  triangle 1
  line(x[7], y[7], x[9], y[9]); // right
  line(x[9], y[9], x[11], y[11]); // diagnoal line
  line(x[11], y[11], x[7], y[7]); // diagnoal line


  //  triangle 2
  line(x[8], y[8], x[10], y[10]); // right
  line(x[10], y[10], x[12], y[12]); // diagnoal line
  line(x[12], y[12], x[8], y[8]); // diagnoal line


  //  triangle 3
  line(x[1], y[1], x[3], y[3]); // right
  line(x[3], y[3], x[5], y[5]); // left
  line(x[5], y[5], x[1], y[1]); // top


  //  triangle 5
  line(x[0], y[0], x[2], y[2]); // right
  line(x[2], y[2], x[4], y[4]); // left
  line(x[4], y[4], x[0], y[0]); // top

 // stroke(255, 0, 0);
  strokeWeight(sWeight + 8);

  // Pairs
  line(x[7], y[7], x[2], y[2]); // right
  line(x[7], y[7], x[4], y[4]); // left

  line(x[8], y[8], x[5], y[5]); // right
  line(x[8], y[8], x[3], y[3]); // left

  line(x[9], y[9], x[0], y[0]); // right
  line(x[9], y[9], x[4], y[4]); // left


  line(x[10], y[10], x[1], y[1]); // right
  line(x[10], y[10], x[5], y[5]); // left

  line(x[11], y[11], x[0], y[0]); // right
  line(x[11], y[11], x[2], y[2]); // left
  
  line(x[12], y[12], x[1], y[1]); // right
  line(x[12], y[12], x[3], y[3]); // left
  
  save("Matatrons-cube_002.png");
  exit();
  
}
