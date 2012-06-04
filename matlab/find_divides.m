function find_divides(a,b)
    
    t = cputime;
    for x=0:1000
        y = (b * x) / ((a * x) - b)
        if y > 0
            fprintf('%d/%d kesrinin bölenleri 1/%d ve 1/%d\n',a,b,x,y)
            break;
        end
    end
    
    e = cputime-t;
    fprintf('%d saniye\n',e)
    
end