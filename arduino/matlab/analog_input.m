% a = arduino('COM5');
while (1)
a.analogRead(8)
pause(0.5);
end

% DÝKKAT 
% matlab arduino etkileþiminde analog okumak biraz farklý 
% A0 pinini okumak için a.analogRead(8)
% A1 pinini okumak için a.analogRead(9)
% ...
% bu þekilde analog veri okuyoruz.