
void setup() {                
  pinMode(13, OUTPUT);   // arduino kartındeki 13. pini çıkış pini yap.  
}

void loop() { // sonsuz döngüye giriliyor.

  digitalWrite(13, HIGH);   // 13. numaralı pin lojiik 1 yapılıyor. 
  delay(1000);     // 1000 ms bekle          
  digitalWrite(13, LOW);    // 13. numaralı pin lojiik 0 yapılıyor. 
  delay(1000);     // 1000 ms bekle               
}
