 import processing.serial.*; // imports library for serial communication  
 import java.awt.event.KeyEvent; // imports library for reading the data from the serial port  
 import java.io.IOException;  
 Serial myPort; // defines Object Serial 
 String[] data;
 
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx 

String distance_1="", distance_2="", distance_3="", distance_4="";
int iDistance_1, iDistance_2, iDistance_3, iDistance_4, Front , Rear;
int index1 = 0, index2 = 0, index3 = 0, index4 = 0, index5 = 0;
float angle1 = 0, angle2 = 0, angle3 = 0, angle4 = 0;

//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

 void setup() {
  size(1900,970);  
  smooth();
  
  myPort = new Serial(this,"COM3", 115200);
  data = new String[6];
 }
 
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx 

void draw() {
  background(0);  // Black
  noStroke();
  
  // Car
  fill(0,102,204);   // Blue
  rect(860, 435, 180, 100);  // (x;y) = (869, 435) ; length = 180 ; width = 100
  
  arc(860, 485, 70, 100, PI/2, 3*PI/2);  // length = 90 ; width = 220  ; Front
  arc(1040, 485, 35, 100, 3*PI/2, 5*PI/2);  // length = 90 ; width = 220 ; Rear
  
  noFill();
   stroke(255);
   strokeWeight(2);
  arc(925, 485, 70, 150, 5*PI/6, 7*PI/6);
  
  float Length = 30;
  float ang_1 = -160;
  float ang_2 = -20;
  
  float X_1 = 895, Y_1 = 447;
  float X_2 = 895, Y_2 = 523;
  
  float angRadians_1 = radians(ang_1);
  float angRadians_2 = radians(ang_2);
  
  float endX1 = X_1 - cos(angRadians_1) * Length;
  float endY1 = Y_1 - sin(angRadians_1) * Length;
  float endX2 = X_2 + cos(angRadians_2) * Length;
  float endY2 = Y_2 + sin(angRadians_2) * Length;

  line(X_1, Y_1, endX1, endY1);
  line(X_2, Y_2, endX2, endY2);
  arc(942, 485, 40, 105, 5*PI/6, 7*PI/6);
  arc(942, 485, 45, 110, 5*PI/6, 7*PI/6);
  
//==============================================//  
  float Length_a = 70;
  float ang_a1 = -177;
  float ang_a2 = -3;
  
  float X_a1 = endX1, Y_a1 = endY1;
  float X_a2 = endX2, Y_a2 = endY2;
  
  float angRadians_a1 = radians(ang_a1);
  float angRadians_a2 = radians(ang_a2);
  
  float endXa1 = X_a1 - cos(angRadians_a1) * Length_a;
  float endYa1 = Y_a1 - sin(angRadians_a1) * Length_a;
  float endXa2 = X_a2 + cos(angRadians_a2) * Length_a;
  float endYa2 = Y_a2 + sin(angRadians_a2) * Length_a;

  line(X_a1, Y_a1, endXa1, endYa1);
  line(X_a2, Y_a2, endXa2, endYa2);
  arc(1007, 485, 30, 95, 5*PI/6, 7*PI/6);
  
//==============================================//  
  float Length_b = 37;
  float ang_b1 = 155;
  float ang_b2 = 25;
  
  float X_b1 = endXa1, Y_b1 = endYa1;
  float X_b2 = endXa2, Y_b2 = endYa2;
  
  float angRadians_b1 = radians(ang_b1);
  float angRadians_b2 = radians(ang_b2);
  
  float endXb1 = X_b1 - cos(angRadians_b1) * Length_b;
  float endYb1 = Y_b1 - sin(angRadians_b1) * Length_b;
  float endXb2 = X_b2 + cos(angRadians_b2) * Length_b;
  float endYb2 = Y_b2 + sin(angRadians_b2) * Length_b;

  line(X_b1, Y_b1, endXb1, endYb1);
  line(X_b2, Y_b2, endXb2, endYb2);
  arc(1010, 485, 40, 160, -PI/6, PI/6);
  
  arc(960, 458, 180, 30, -3*PI/4, -PI/4);
  arc(960, 512, 180, 30, -7*PI/4, -5*PI/4);
  
//==============================================//  
  float Length_aa = 17;
  float ang_aa1 = -65;
  float ang_aa2 = -115;
  
  float angRadians_aa1 = radians(ang_aa1);
  float angRadians_aa2 = radians(ang_aa2);
  
  float midX_a1 = (X_a1 + endXa1)/2;  
  float midY_a1 = (Y_a1 + endYa1)/2;
  float midX_a2 = (X_a2 + endXa2)/2;  
  float midY_a2 = (Y_a2 + endYa2)/2;
  
  float endmidXa1 = midX_a1 + cos(angRadians_aa1) * Length_aa;
  float endmidYa1 = midY_a1 + sin(angRadians_aa1) * Length_aa;
  float endmidXa2 = midX_a2 - cos(angRadians_aa2) * Length_aa;
  float endmidYa2 = midY_a2 - sin(angRadians_aa2) * Length_aa;

  line(midX_a1, midY_a1, endmidXa1, endmidYa1);
  line(midX_a1+5, midY_a1, endmidXa1+5, endmidYa1);
  line(midX_a2, midY_a2, endmidXa2, endmidYa2);
  line(midX_a2+5, midY_a2, endmidXa2+5, endmidYa2);
  
  line(948, 448, 955, 448);
  line(948, 450, 955, 450);
  
  line(996, 448, 1003, 448);
  line(996, 450, 1003, 450);
  
  line(948, 518, 955, 518);
  line(948, 520, 955, 520);
  
  line(996, 518, 1003, 518);
  line(996, 520, 1003, 520);
  

//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
  
  // 4 sensor
  noStroke();
  fill(200,100,100); // Red
  rect(830,445, 12, 12,5,5,5,5);  // TT
  fill(200,100,100); 
  rect(830,515, 12, 12,5,5,5,5);  // DT
  fill(200,100,100); 
  rect(1047,445, 12, 12,5,5,5,5);  // TP
  fill(200,100,100); 
  rect(1047,515, 12, 12,5,5,5,5);  // DP
  
  // Mirror
  float lineLength = 25;
  float angleDegrees_1 = -57;
  float angleDegrees_2 = 57;
  
  float startX_1 = 900, startX_2 = 900;
  float startY_1 = 435, startY_2 = 535;
  
  float angleRadians_1 = radians(angleDegrees_1);
  float angleRadians_2 = radians(angleDegrees_2);
  
  float endX_1 = startX_1 + cos(angleRadians_1) * lineLength;
  float endY_1 = startY_1 + sin(angleRadians_1) * lineLength;
  float endX_2 = startX_2 + cos(angleRadians_2) * lineLength;
  float endY_2 = startY_2 + sin(angleRadians_2) * lineLength;
  
  float midX_1 = (startX_1 + endX_1)/2;  
  float midY_1 = (startY_1 + endY_1)/2;
  float midX_2 = (startX_2 + endX_2)/2;  
  float midY_2 = (startY_2 + endY_2)/2;

  stroke(0, 0, 255);  // Blue
  strokeWeight(3);
  
  line(startX_1, startY_1, endX_1, endY_1);
  line(startX_2, startY_2, endX_2, endY_2);
  
  noFill();
  arc(midX_2, midY_2, 18, 25, 19*PI/60, 79*PI/60);
  arc(midX_1, midY_1, 18, 25, 123*PI/180, 303*PI/180);
  
//xxxxxxxxxxxxxxxxxxxxxxxxxx - Receive Data - xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

  if (myPort.available() > 0) {
    String inData = myPort.readStringUntil('\n');  // Read data until a newline character is encountered

    if (inData != null) {
      data = split(inData, ',');  // Split the received data by commas

      // Extract values from the array
      int distance_1 = int(data[0]);
      int distance_2 = int(data[1]);
      int distance_3 = int(data[2]);
      int distance_4 = int(data[3]);
    
    // Convert strings to integers
      iDistance_1 = int(distance_1);
      iDistance_2 = int(distance_2);
      iDistance_3 = int(distance_3);
      iDistance_4 = int(distance_4);
    }
  }

//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
  
  drawText ();
  drawSimul();
  
}
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

 void drawText() {
 // xxxxxxxxxxxxxxxxxxx - Sensor Value - xxxxxxxxxxxxxxxxxxxx
 
 //xxxxxx TT XXXXXXXXXXX
   float x1 = 390;
   float y1 = 90;
  
  if(iDistance_1 > 600 || iDistance_1 == 0) {
       text("No Signal", x1-70, y1+100 );
    } 
  else {
      text(iDistance_1 +" cm", x1, y1);
    }
  
 //xxxxxx DT XXXXXXXXXXX
   float x2 = 390;
   float y2 = 910;
  
  if(iDistance_2 > 600 || iDistance_2 == 0) {
       text("No Signal", x2-70, y2-100);
    } 
  else {
      text(iDistance_2 +" cm", x2, y2);
    }
 
 //xxxxxx TP XXXXXXXXXXX
   float x3 = 1365;
   float y3 = 90;
  
  if(iDistance_3 > 600 || iDistance_3 == 0) {
       text("No Signal", x3-70, y3+100);
    }
  else {
      text(iDistance_3 +" cm", x3, y3);
  }
   
 //xxxxxx DP XXXXXXXXXXX
   float x4 = 1365;
   float y4 = 910;
   
  if(iDistance_4 > 600 || iDistance_4 == 0) {
       text("No Signal", x4-70, y4-100);
    }
  else {
    text(iDistance_4 +" cm", x4, y4);
  }
  
  textSize(60);
  fill(98,245,60);
  
  //xxxxxxxxxxxxxxxxxxxxx - Obstacle - xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
  
  if(iDistance_1 > iDistance_2) {
     int a = iDistance_1 - iDistance_2;
     if(iDistance_1 < 70 && iDistance_2 < 70 ){
       if (a < 5) {
       fill(200,100,100); // Red
       rect(860-iDistance_2 - 35 - 15,485+10*a - 7, 15, 15,5,5,5,5);  // 7 ~ 15/2 => dich diem ve len goc tren cua vat can
       }
     }
     else {
       if (a < 10) {
       fill(200,100,100); // Red
       rect(860-iDistance_2 - 35 - 15,485+10*a - 7, 15, 15,5,5,5,5);  // 7 ~ 15/2 => dich diem ve len goc tren cua vat can
       }
     }
  }
  else {
       int a = iDistance_2 - iDistance_1;
       if(iDistance_1 < 70 && iDistance_2 < 70 ){
         if(a < 5) {
         fill(200,100,100); // Red
         rect(860-iDistance_1 - 35 - 15,485-10*a - 7, 15, 15,5,5,5,5);
         }
       }
       else {
         if (a < 10) {
         fill(200,100,100); // Red
         rect(860-iDistance_1 - 35 - 15,485+10*a - 7, 15, 15,5,5,5,5);  // 7 ~ 15/2 => dich diem ve len goc tren cua vat can
       }
    }
  }

  if(iDistance_3 > iDistance_4) {
     int b = iDistance_3 - iDistance_4;
     if(iDistance_3 < 70 && iDistance_4 < 70) {
       if (b < 5) {
       fill(200,100,100); // Red
       rect(1040+iDistance_3 + 15,485-10*b - 7, 15, 15,5,5,5,5);  // 7 ~ 15/2 => dich diem ve len goc tren cua vat can
       }
    }
    else {
      if (b < 10) {
       fill(200,100,100); // Red
       rect(1040+iDistance_3 + 15,485-10*b - 7, 15, 15,5,5,5,5);  // 7 ~ 15/2 => dich diem ve len goc tren cua vat can
       }
    }
  }
  else {
     int b = iDistance_4 - iDistance_3;
     if(iDistance_3 < 70 && iDistance_4 < 70) {
       if(b < 5) {
       fill(200,100,100); // Red
       rect(1040+iDistance_3 + 15,485+10*b - 7, 15, 15,5,5,5,5);
       }
     }
     else {
       if(b < 10) {
       fill(200,100,100); // Red
       rect(1040+iDistance_3 + 15,485+10*b - 7, 15, 15,5,5,5,5);
       }
     }
  }
}

//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

void drawSimul() {
  //xxxxxxxxxxxxxxxxxx - Simulation Radar - xxxxxxxxxxxxxxxxxxxxxxxxxx
  
  // xxxxxxx TT - (1) xxxxxxxxx
  pushMatrix();
  scale(-1, 1);
  translate(-835, 450); 

  float distance_1 = map(sin(angle1), -1, 1, 0.9*iDistance_1, iDistance_1);
  int colorValue_1 = (int) map(distance_1, 0, iDistance_1, 0, 255);

  fill(0, colorValue_1, 0, 170); // Green
  noStroke();
  float startAngle1 = -radians(35); 
  float endAngle1 = radians(35); 
  arc(0, 0, distance_1 * 2, distance_1 * 2, startAngle1, endAngle1);
  popMatrix();
  angle1 += radians(5); // increase Angle for frame
  
  // xxxxxxx DT - (2) xxxxxxxxx
  pushMatrix();
  scale(-1, 1);
  translate(-835, 520); 

  float distance_2 = map(sin(angle2), -1, 1, 0.9*iDistance_2, iDistance_2);
  int colorValue_2 = (int) map(distance_2, 0, iDistance_2, 0, 255);

  fill(0, colorValue_2, 0, 170); // Green
  noStroke();
  float startAngle2 = -radians(35); 
  float endAngle2 = radians(35); 
  arc(0, 0, distance_2 * 2, distance_2 * 2, startAngle2, endAngle2);
  popMatrix();
  angle2 += radians(5); // increase Angle for frame
  
  // xxxxxxx TP - (3) xxxxxxxxx
  pushMatrix();
  translate(1050, 450); 
  float distance_3 = map(sin(angle3), -1, 1, 0.9*iDistance_3, iDistance_3);
  int colorValue_3 = (int) map(distance_3, 0, iDistance_3, 0, 255);
  fill(0, colorValue_3, 0, 170); // Green
  noStroke();
  float startAngle3 = -radians(35); 
  float endAngle3 = radians(35); 
  arc(0, 0, distance_3 * 2, distance_3 * 2, startAngle3, endAngle3);
  popMatrix();
  angle3 += radians(5); // increase Angle for frame

  // xxxxxxx DP - (4) xxxxxxxxx
  pushMatrix();
  translate(1050, 520); 

  float distance_4 = map(sin(angle4), -1, 1, 0.9*iDistance_4, iDistance_4);
  int colorValue_4 = (int) map(distance_4, 0, iDistance_4, 0, 255);

  fill(0, colorValue_4, 0, 170); // Green
  noStroke();
  float startAngle4 = -radians(35); 
  float endAngle4 = radians(35); 
  arc(0, 0, distance_4 * 2, distance_4 * 2, startAngle4, endAngle4);
  popMatrix();
  angle4 += radians(5); // increase Angle for frame

}


