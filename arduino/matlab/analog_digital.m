% a = arduino('COM5');
a.pinMode(2,'output');

a.pinMode(11,'output');
a.pinMode(13, 'output');
a.digitalWrite(13, 1);
while(1)
    int fadeValue;
    for fadeValue=180:10:250
    a.analogWrite(9, fadeValue);
    
    a.digitalWrite(11, 0);
    a.digitalWrite(2, 1); 
    pause(0.3);
    a.digitalWrite(2, 0);
    a.digitalWrite(11, 1); 
    pause(0.3);
    end
end
a.digitalWrite(2, 0);
a.digitalWrite(11, 0);