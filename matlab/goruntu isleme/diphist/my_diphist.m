function hist = my_diphist(resim)
I=imread(resim);
hist=zeros(1,255);
sz = size(I)

for i=1:sz(1)
    for j=1:sz(1)
        say=I(i,j);
        hist(say) = hist(say) + 1;
    end
end

% my_diphist('cameraman.tif')

%cehars