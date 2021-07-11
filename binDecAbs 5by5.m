function [ y ] = binDecAbs( x )
A = abs(x);

[B,I] = sort(A,'descend');

B;
I;

for i = 1:3
    temp_I(i) = I(i);
end

temp_I = sort(temp_I, 'ascend');

c = 1;
v = 0;
p = 1;

for i = 1:8
    
    if(c<=3 && i == temp_I(c))
        v = v + p;
        c = c + 1;
    end
    
    p = p*2;
    
end

y = v;

end

