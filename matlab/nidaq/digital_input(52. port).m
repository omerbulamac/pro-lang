dio = digitalio('nidaq','Dev1');
addline(dio, 0, 'in');    
portval = getvalue(dio);
% in: digital girdi
% buradaki 0 degeri tabloda hangi DIO ya karsilik gelecegini gosterir
% DIO0 = 52. port

% DIO0'a yani 52. porttan sinyal alacagiz. Sonra onu isleyecegiz.


% if (portval == sonuc)
%     sonuc = not(sonuc)
%     if portval == 1
%         fprintf('birakti\n')
%     else
%         fprintf('basti\n')
%     end
% end