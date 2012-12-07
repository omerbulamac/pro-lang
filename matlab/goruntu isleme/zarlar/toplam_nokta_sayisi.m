function toplam_nokta_sayisi(resim)
    I = imread(resim);
    sz = size(I);
    
    I = rgb2gray(I)
    for i=1:sz(1)
        for j=1:sz(2)
          
          if I(i,j) == 0
              I(i,j) = 255;
          else
              I(i,j) = 0;
          end
       end
    
    end
    [etiket, sayi] = bwlabel(I);
    fprintf('toplam %d tane nokta var.\n', sayi)
end

% toplam_nokta_sayisi('zar.png')

% cehars