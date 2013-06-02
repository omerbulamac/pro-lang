dio = digitalio('nidaq','Dev1'); 
addline(dio, 0, 'out');
% out: digital cikti
% buradaki 0 degeri tabloda hangi DIO ya karsilik gelecegini gosterir
% DIO0 = 52. port

% DIO0'a yani 52. porta cikti(out) gonderecegiz. 

putvalue(dio, 1)
% 52. porta 5V gonder

pause(1) % 1 sn bekle

putvalue(dio, 0)
% 52. porta 0 gonder
