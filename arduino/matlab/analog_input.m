% a = arduino('COM5');
sayac = 0;
while (1)
    sayac = sayac + 1;
t = a.analogRead(8)
pause(0.1);
liste(sayac) = t;
plot(liste);
end



% DÝKKAT 
% matlab arduino etkileþiminde analog okumak biraz farklý 
% A0 pinini okumak için a.analogRead(8)
% A1 pinini okumak için a.analogRead(9)
% ...
% bu þekilde analog veri okuyoruz.