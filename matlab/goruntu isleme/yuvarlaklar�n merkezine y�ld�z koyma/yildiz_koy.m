function yildiz_koy(resim)

    I = imread(resim);
    BW = im2bw(I);
    BW_dolu = imfill(BW, 'holes');

    [L, T] = bwlabel(BW_dolu, 8);
    R = regionprops(L, 'Eccentricity');
    a = [R.Eccentricity];

    f = a < 0.4;

    x = find(f == 0)
    y = find(f == 1)

    for i = 1:length(x)
        bul = find(L == x(i));
        L(bul) = 0;
    end

    imshow(L);

    for i = 1:length(y)
        bul = find(L == y(i));

        s  = regionprops(L, 'centroid');
        centroids = cat(1, s.Centroid);

        hold(imgca,'on')
        plot(imgca,centroids(:,1), centroids(:,2), 'r*')
        hold('off')

    end

end