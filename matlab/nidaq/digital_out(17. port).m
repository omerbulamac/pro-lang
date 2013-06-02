dio = digitalio('nidaq','Dev1'); 
addline(dio, 1, 'out');
% DIO1 = 17. port

putvalue(dio, 1)
% 17. porta 5V gönder

pause(1) % 1 sn bekle

putvalue(dio, 0)
% 17. porta 0 gönder
