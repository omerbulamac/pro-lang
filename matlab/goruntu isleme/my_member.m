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