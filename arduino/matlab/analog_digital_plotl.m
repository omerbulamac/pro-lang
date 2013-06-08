% sayac = 0
a.pinMode(2,'output');

a.pinMode(11,'output');
a.pinMode(13, 'output');
a.digitalWrite(13, 1);
while(1)
    
    sayac = sayac + 1;
    int siddet;
    
    siddet = 140;
    
    a.analogWrite(9, siddet);
    
    if mod(sayac,2) == 0
        liste(sayac) =  siddet / 10
    else
        liste(sayac) =  -1 * siddet / 10
    end
        a.digitalWrite(11, 0);
    a.digitalWrite(2, 1); 
    pause(0.3);
    a.digitalWrite(2, 0);
    a.digitalWrite(11, 1); 
    pause(0.3);
    
    plot(liste);
end

a.digitalWrite(2, 0);
a.digitalWrite(11, 0);