dio = digitalio('nidaq','Dev1'); 
addline(dio, 0, 'out');
% out: digital çýktý
% buradaki sýfýr degeri tabloda hangi DIO ya karsýlýk geleceðini gösterir
% DIO0 = 52. port

% DIO0'a yani 52. porta çýktý(out) göndereceðiz. 

putvalue(dio, 1)
% 52. porta 5V gönder

pause(1) % 1 sn bekle

putvalue(dio, 0)
% 52. porta 0 gönder
