function [ ldpimg ] = LDP_testAbs( img )

m1 = [-3 -3  5 ; -3 0  5 ; -3 -3  5] ;
m2 = [-3  5  5 ; -3 0  5 ; -3 -3 -3] ;
m3 = [ 5  5  5 ; -3 0 -3 ; -3 -3 -3] ;
m4 = [ 5  5 -3 ;  5 0 -3 ; -3 -3 -3] ;
m5 = [ 5 -3 -3 ;  5 0 -3 ;  5 -3 -3] ;
m6 = [-3 -3 -3 ;  5 0 -3 ;  5  5 -3] ;
m7 = [-3 -3 -3 ; -3 0 -3 ;  5  5  5] ;
m8 = [-3 -3 -3 ; -3 0  5 ; -3  5  5] ;

%img = imread('000000.JPG');
img = double(img);
R=size(img,1);
C=size(img,2);

for i = 1 : R-2
    for j = 1 : C-2
        s1 = 0;s2 = 0;s3 = 0;s4 = 0;s5 = 0;s6 = 0;s7 = 0;s8 = 0;
        for a = 0:2
            for b = 0:2
             s1 = s1 + img(i+a,j+b)*m1(a+1,b+1);
             s2 = s2 + img(i+a,j+b)*m2(a+1,b+1);
             s3 = s3 + img(i+a,j+b)*m3(a+1,b+1);
             s4 = s4 + img(i+a,j+b)*m4(a+1,b+1);
             s5 = s5 + img(i+a,j+b)*m5(a+1,b+1);
             s6 = s6 + img(i+a,j+b)*m6(a+1,b+1);
             s7 = s7 + img(i+a,j+b)*m7(a+1,b+1);
             s8 = s8 + img(i+a,j+b)*m8(a+1,b+1);
            end
        end
        z1(i,j) = s1;
        z2(i,j) = s2;
        z3(i,j) = s3;
        z4(i,j) = s4;
        z5(i,j) = s5;
        z6(i,j) = s6;
        z7(i,j) = s7;
        z8(i,j) = s8;
    end
end

mask_value = z1;
mask_value(:,:,2)= z2;
mask_value(:,:,3)= z3;
mask_value(:,:,4)= z4;
mask_value(:,:,5)= z5;
mask_value(:,:,6)= z6;
mask_value(:,:,7)= z7;
mask_value(:,:,8)= z8;


%mask_value = double(mask_value);


newR = size(mask_value, 1);
newC = size(mask_value, 2);

for i = 1:newR
    for j = 1:newC
        %ar = [0 0 0 0 0 0 0 0];
        %v = 0;
        %v_new = 0;
        for k = 1:8
            ar(k) = mask_value(i,j,k);
        end
        v = ar;
        v_new = binDecAbs(v);
        newimg(i,j) = v_new;
    end
end

ldpimg = newimg;

end

