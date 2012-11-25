function para_say(resim)
I = imread(resim);
    bw = im2bw(I);
    temiz = imfill(bw, 'holes');
    
    [x,y] = bwlabel(temiz);

    R = regionprops(x, 'Area');
    a = [R.Area];
    
    f = a > 1000;
    
    kac = find(f == 0);
    
    for i = 1:length(kac)
        bul = find(x == kac(i));
        x(bul) = 0;
    end
    
    [etiket, sayi] = bwlabel(x);
    fprintf('%d para var.\n', sayi)
end