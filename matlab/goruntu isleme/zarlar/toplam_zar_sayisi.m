function toplam_zar_sayisi(resim)
    I = imread(resim);
    sz = size(I);
    
    I = rgb2gray(I)
    for i=1:sz(1)
        for j=1:sz(2)
          
          if (I(i,j) == 255) || (I(i,j) == 0)
              I(i,j) = 255;
          else
              I(i,j) = 0;
          end
       end
    
    end
    
    [etiket, sayi] = bwlabel(I);
    fprintf('toplam %d tane zar var.\n', sayi)
end

% toplam_zar_sayisi('zar.png')

% cehars