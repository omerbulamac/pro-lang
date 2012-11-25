function my_member(matris,deger)
sz = size(matris)
for i=1:sz(1)
        for j=1:sz(2)
            if matris(i,j) ~= deger;
                matris(i,j) = 0;
            end
        end
end
matris
end

% a = [1,2,3,4,5;2,3,4,5,6;3,4,5,6,7]
% b = 3
% my_member(a,b)


% cehars