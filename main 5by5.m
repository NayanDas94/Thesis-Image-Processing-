%Reading 6 Expression and performing LDP count%
%exp_6 variable displays the counted values%
%writing file from LBP count for SVM%
%Section START%

myFile6 = dir('F:\cse497 Thesis\Cohn\SixExpressionLast3Images\*.jpg');
load CohonExp6.txt;
f6 = CohonExp6;

for p = 1:length(myFile6)
    filename = strcat('F:\cse497 Thesis\Cohn\SixExpressionLast3Images\', myFile6(p).name);
    img = imread(filename);
    img_LDP = LDP_testAbs(img);
    for q = 1:256
        count = 0;
        r = size(img_LDP,1);
        c = size(img_LDP,2);
        
        for i = 1:floor(r/5)
            for j = 1:floor(c/5)
                if img_LDP(i,j) == q-1
                    count = count+1;
                end
            end
        end
        exp_6(p,q) = count;
        
        for i = 1:floor(r/5)
            for j = ceil(c/5):floor((2*c)/5)
                if img_LDP(i,j) == q-1
                    count = count+1;
                end
            end
        end
        exp_6(p,q+256) = count;
        
        for i = 1:floor(r/5)
            for j = ceil((2*c)/5):floor((3*c)/5)
                if img_LDP(i,j) == q-1
                    count = count+1;
                end
            end
        end
        exp_6(p,q+(256*2)) = count;
        
        for i = 1:floor(r/5)
            for j = ceil((3*c)/5):floor((4*c)/5)
                if img_LDP(i,j) == q-1
                    count = count+1;
                end
            end
        end
        exp_6(p,q+(256*3)) = count;
        
        for i = 1:floor(r/5)
            for j = ceil((4*c)/5):c
                if img_LDP(i,j) == q-1
                    count = count+1;
                end
            end
        end
        exp_6(p,q+(256*4)) = count;
        
        for i = ceil(r/5):floor((2*r)/5)
            for j = 1:floor(c/5)
                if img_LDP(i,j) == q-1
                    count = count+1;
                end
            end
        end
        exp_6(p,q+(256*5)) = count;
        
        for i = ceil(r/5):floor((2*r)/5)
            for j = ceil(c/5):floor((2*c)/5)
                if img_LDP(i,j) == q-1
                    count = count+1;
                end
            end
        end
        exp_6(p,q+(256*6)) = count;
        
        for i = ceil(r/5):floor((2*r)/5)
            for j = ceil((2*c)/5):floor((3*c)/5)
                if img_LDP(i,j) == q-1
                    count = count+1;
                end
            end
        end
        exp_6(p,q+(256*7)) = count;
        
        for i = ceil(r/5):floor((2*r)/5)
            for j = ceil((3*c)/5):floor((4*c)/5)
                if img_LDP(i,j) == q-1
                    count = count+1;
                end
            end
        end
        exp_6(p,q+(256*8)) = count;
        
        for i = ceil(r/5):floor((2*r)/5)
            for j = ceil((4*c)/5):c
                if img_LDP(i,j) == q-1
                    count = count+1;
                end
            end
        end
        exp_6(p,q+(256*9)) = count;
        
        for i = ceil((2*r)/5):floor((3*r)/5)
            for j = 1:floor(c/5)
                if img_LDP(i,j) == q-1
                    count = count+1;
                end
            end
        end
        exp_6(p,q+(256*10)) = count;
        
        for i = ceil((2*r)/5):floor((3*r)/5)
            for j = ceil(c/5):floor((2*c)/5)
                if img_LDP(i,j) == q-1
                    count = count+1;
                end
            end
        end
        exp_6(p,q+(256*11)) = count;
        
        for i = ceil((2*r)/5):floor((3*r)/5)
            for j = ceil((2*c)/5):floor((3*c)/5)
                if img_LDP(i,j) == q-1
                    count = count+1;
                end
            end
        end
        exp_6(p,q+(256*12)) = count;
        
        for i = ceil((2*r)/5):floor((3*r)/5)
            for j = ceil((3*c)/5):floor((4*c)/5)
                if img_LDP(i,j) == q-1
                    count = count+1;
                end
            end
        end
        exp_6(p,q+(256*13)) = count;
        
        for i = ceil((2*r)/5):floor((3*r)/5)
            for j = ceil((4*c)/5):c
                if img_LDP(i,j) == q-1
                    count = count+1;
                end
            end
        end
        exp_6(p,q+(256*14)) = count;
        
        for i = ceil((3*r)/5):floor((4*r)/5)
            for j = 1:floor(c/5)
                if img_LDP(i,j) == q-1
                    count = count+1;
                end
            end
        end
        exp_6(p,q+(256*15)) = count;
        
        for i = ceil((3*r)/5):floor((4*r)/5)
            for j = ceil(c/5):floor((2*c)/5)
                if img_LDP(i,j) == q-1
                    count = count+1;
                end
            end
        end
        exp_6(p,q+(256*16)) = count;
        
        for i = ceil((3*r)/5):floor((4*r)/5)
            for j = ceil((2*c)/5):floor((3*c)/5)
                if img_LDP(i,j) == q-1
                    count = count+1;
                end
            end
        end
        exp_6(p,q+(256*17)) = count;
        
        for i = ceil((3*r)/5):floor((4*r)/5)
            for j = ceil((3*c)/5):floor((4*c)/5)
                if img_LDP(i,j) == q-1
                    count = count+1;
                end
            end
        end
        exp_6(p,q+(256*18)) = count;
        
        for i = ceil((3*r)/5):floor((4*r)/5)
            for j = ceil((4*c)/5):c
                if img_LDP(i,j) == q-1
                    count = count+1;
                end
            end
        end
        exp_6(p,q+(256*19)) = count;
        
        for i = ceil((4*r)/5):r
            for j = 1:floor(c/5)
                if img_LDP(i,j) == q-1
                    count = count+1;
                end
            end
        end
        exp_6(p,q+(256*20)) = count;
        
        for i = ceil((4*r)/5):r
            for j = ceil(c/5):floor((2*c)/5)
                if img_LDP(i,j) == q-1
                    count = count+1;
                end
            end
        end
        exp_6(p,q+(256*21)) = count;
        
        for i = ceil((4*r)/5):r
            for j = ceil((2*c)/5):floor((3*c)/5)
                if img_LDP(i,j) == q-1
                    count = count+1;
                end
            end
        end
        exp_6(p,q+(256*22)) = count;
        
        for i = ceil((4*r)/5):r
            for j = ceil((3*c)/5):floor((4*c)/5)
                if img_LDP(i,j) == q-1
                    count = count+1;
                end
            end
        end
        exp_6(p,q+(256*23)) = count;
        
        for i = ceil((4*r)/5):r
            for j = ceil((4*c)/5):c
                if img_LDP(i,j) == q-1
                    count = count+1;
                end
            end
        end
        exp_6(p,q+(256*24)) = count;
        
        
        
        
    end
    exp_6(p,(256*25)+1) = f6(p,2)+1;
end

%Part: Writing into text file for SVM%

A = size(exp_6,1);
B = size(exp_6,2);

Eid=fopen('LDP_6_Abs.txt','w');

for i = 1:A
    fprintf(Eid, '%d ', [exp_6(i,(256*25)+1)]);
    for j=1:B-1
        fprintf(Eid, '%d:%d ', [ j exp_6(i,j)]);
    end
    fprintf(Eid, '\n');
end
        
fclose(Eid);
%Section END%