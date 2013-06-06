void setup() {
  Serial.begin(9600);
  pinMode(2, INPUT); // arduino kartındaki 2. pini giris pini yaptık.  
}

void loop() {
  int buttonState = digitalRead(2); // arduino kartındeki 2. pini okuyacağız.
  Serial.println(buttonState);
  delay(1);
}



