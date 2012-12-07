function osym(resim)
    
    I = imread(resim);
    
    sz = size(I);
    
    I = rgb2gray(I);
    I = im2bw(I)
   imshow(I) 
    
    
end