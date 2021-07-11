function [ lbp_image ] = LBP( x )


img = x;
R=size(img,1);
C=size(img,2);

for i = 2:1:R-1
    for j = 2:1:C-1
        value = 0;
        p = 1;
        for a = -1:1
            for b = -1:1
                if(a == 0 && b == 0)
                    continue;
                end
                
                if(img(i+a,j+b)>=img(i,j))
                    value = value + p;
                end
                p = p*2;
            end
        end
        newimg(i,j) = value;
    end
end
lbp_image = newimg;


end

