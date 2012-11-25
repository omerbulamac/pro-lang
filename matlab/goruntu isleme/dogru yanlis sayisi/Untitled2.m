I = imread('cameraman.tif');
sz = size(I);

say = 0;

for i=1:sz(1)
    for j=1:sz(2)
        if (say == 0 || say == 7)
            I(i,j) = 0;
            
        end
        say = say + 1;
    end
end
imshow(I)


