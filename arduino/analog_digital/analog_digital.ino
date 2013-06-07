void setup() { 
  Serial.begin(9600);
   pinMode(2, OUTPUT);
   pinMode(11, OUTPUT);
   
   pinMode(13, OUTPUT);
 
  digitalWrite(13, HIGH);
}
 
 
void loop() {
   // pinO daki degeri okuyacagiz
                                    // nidaq(get)
//  Serial.println(sensorValue);
for(int fadeValue = 180 ; fadeValue < 250; fadeValue +=40) { 
Serial.println(fadeValue);
  analogWrite(9, fadeValue);

digitalWrite(11, LOW);
digitalWrite(2, HIGH); 
      delay(100);
digitalWrite(2, LOW);
digitalWrite(11, HIGH); 

  delay(100);
   } 
   
}
