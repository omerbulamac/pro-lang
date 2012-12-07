function osym(resim)
    
    I = imread(resim);
    
    sz = size(I);
    
    I = rgb2gray(I);
    
    
    for i=1:sz(1)
        for j=1:sz(2)
            if I(i,j) == 0 || I(i,j) == 255
                I(i,j) = 0;
            else
                I(i,j) = 255;
            end
        end
    end
    
   [etiket, sayi] = bwlabel(I);
   osym_logosu = etiket==1
   
    s = regionprops(osym_logosu, 'centroid')
    merkez = s.Centroid
    
    if (merkez(1) < sz(2) / 2) && (merkez(2) > sz(1) / 2)
        fprintf('0 derece\n');
    elseif (merkez(1) > sz(2) / 2) && (merkez(2) < sz(1) / 2)
        fprintf('180 derece\n');
	elseif (merkez(1) < sz(2) / 2) && (merkez(2) < sz(1) / 2)
        fprintf('270 derece\n');
    elseif (merkez(1) > sz(2) / 2) && (merkez(2) > sz(1) / 2)
        fprintf('90 derece\n');
    end
    
end

% cehars