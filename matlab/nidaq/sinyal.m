clear all
clc

a = fopen('sinyal.txt','r');
[b , sayi] = fscanf(a, '%f', inf);
fclose(a);
 
dio1 = digitalio('nidaq','Dev1'); 
addline(dio1, 0, 'out');
% 52. port

dio2 = digitalio('nidaq','Dev1'); 
addline(dio2, 1, 'out');
% 17 port

sayac = 1;
 
while sayac < sayi + 1
 
b(sayac,1);

if(b(sayac,1) > 0);
    b(sayac,1)
    putvalue(dio1, 1);
    pause(b(sayac,1));
    putvalue(dio1, 0);
    
else
    b(sayac,1)
    b(sayac,1) = b(sayac,1) * (-1);
    putvalue(dio2, 1);
    pause(b(sayac,1));
    putvalue(dio2, 0); 
end
 
sayac = sayac + 1;
end