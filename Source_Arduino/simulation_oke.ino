
#define TRIGGER_PIN_1  12  
#define ECHO_PIN_1     11 

#define TRIGGER_PIN_2  10  
#define ECHO_PIN_2     9 

#define TRIGGER_PIN_3 5  
#define ECHO_PIN_3    4

#define TRIGGER_PIN_4  3  
#define ECHO_PIN_4     2

//===============================================================================
void setup() {
  pinMode(TRIGGER_PIN_1,OUTPUT);
  pinMode(ECHO_PIN_1,INPUT);
  
  pinMode(TRIGGER_PIN_2,OUTPUT);
  pinMode(ECHO_PIN_2,INPUT);
  
  pinMode(TRIGGER_PIN_3,OUTPUT);
  pinMode(ECHO_PIN_3,INPUT);
  
  pinMode(TRIGGER_PIN_4,OUTPUT);
  pinMode(ECHO_PIN_4,INPUT);

  Serial.begin(115200);
}
//===============================================================================

void loop() {

  uint32_t duration_1, distance_1, duration_2, distance_2, duration_3, distance_3, duration_4, distance_4, zero = 0;
  uint32_t X_12, Y_12, X_34, Y_34;

//=================== Truoc (1) =================================//
  digitalWrite(TRIGGER_PIN_1, LOW);  
  delayMicroseconds(2);
  digitalWrite(TRIGGER_PIN_1, HIGH);       
  delayMicroseconds(20);              
  digitalWrite(TRIGGER_PIN_1, LOW);        
  duration_1 = pulseIn(ECHO_PIN_1,HIGH);  
 
  distance_1 = (duration_1 * 35) / (2*1000);

   
  if ((distance_1 > 20) && (distance_1 < 600)) {
    Serial.print(distance_1);
    Serial.print(",");
  } else {
    Serial.print(zero);
    Serial.print(",");
  }
//===============================================================//

//=================== Truoc (2) =================================//
  digitalWrite(TRIGGER_PIN_2, LOW);  
  delayMicroseconds(2);
  digitalWrite(TRIGGER_PIN_2, HIGH);       
  delayMicroseconds(20);              
  digitalWrite(TRIGGER_PIN_2, LOW);        
  duration_2 = pulseIn(ECHO_PIN_2,HIGH);  
 
  distance_2 = (duration_2 * 35) / (2*1000);
   
  if ((distance_2 > 20) && (distance_2 < 600)) {
    Serial.print(distance_2);
    Serial.print(",");
  } else {
    Serial.print(zero);
    Serial.print(",");
  }
//=============================================================//

//=================== Sau (3) =================================//
  digitalWrite(TRIGGER_PIN_3, LOW);  
  delayMicroseconds(2);
  digitalWrite(TRIGGER_PIN_3, HIGH);       
  delayMicroseconds(20);              
  digitalWrite(TRIGGER_PIN_3, LOW);        
  duration_3 = pulseIn(ECHO_PIN_3,HIGH);  
 
  distance_3 = (duration_3 * 35) / (2*1000);
   
  if ((distance_3 > 20) && (distance_3 < 600)) {
    Serial.print(distance_3);
    Serial.print(",");
  } else {
    Serial.print(zero);
    Serial.print(",");
  }
//=============================================================//

//=================== Sau (4) =================================//
  digitalWrite(TRIGGER_PIN_4, LOW);  
  delayMicroseconds(2);
  digitalWrite(TRIGGER_PIN_4, HIGH);       
  delayMicroseconds(20);              
  digitalWrite(TRIGGER_PIN_4, LOW);        
  duration_4 = pulseIn(ECHO_PIN_4,HIGH);  
 
  distance_4 = (duration_4 * 35) / (2*1000);
   
  if ((distance_4 > 20) && (distance_4 < 600)) {
    Serial.print(distance_4);
    Serial.print(",");
  } else {
    Serial.print(zero);
    Serial.print(",");
  }

//=============================================================//
//======= FRONT ========//
if(distance_2 > distance_1)
{
  X_12 = sqrt(distance_1*distance_1 - (5-(distance_2*distance_2 - distance_1*distance_1)/20)^2);
  Y_12 = (distance_2*distance_2 - distance_1*distance_1)/20;
}
else
{
  X_12 = sqrt(distance_1*distance_1 - (5+(distance_1*distance_1 - distance_2*distance_2)/20)^2);
  Y_12 = (distance_1*distance_1 - distance_2*distance_2)/20;
}

//======= REAR ========//
if(distance_4 > distance_3)
{
  X_34 = sqrt(distance_3*distance_3 - (5-(distance_4*distance_4 - distance_3*distance_3)/20)^2);
  Y_34 = (distance_4*distance_4 - distance_3*distance_3)/20;
}
else
{
  X_34 = sqrt(distance_3*distance_3 - (5+(distance_3*distance_3 - distance_4*distance_4)/20)^2);
  Y_34 = (distance_3*distance_3 - distance_4*distance_4)/20;
}


//=============================================================//

Serial.println();

  delay(100);
}