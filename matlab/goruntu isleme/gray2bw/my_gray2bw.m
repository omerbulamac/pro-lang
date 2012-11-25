function I = my_gray2bw(resim)
I = imread(resim);
sz = size(I);
level = graythresh(I);
yeni_level = level * 255;

for i=1:sz(1)
    for j=1:sz(1)
        if I(i,j) < yeni_level
            I(i,j) = 0;
        else
            I(i,j) = 255;
        end
    end
imshow(I)    
end

% my_gray2bw('cameraman.tif')

%cehars