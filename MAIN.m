%Reading 6 Expression and performing LBP count%
%exp_6 variable displays the counted values%
%writing file from LBP count for SVM%
%Section START%

myFile6 = dir('F:\cse497 Thesis\Cohn\SixExpressionLast3Images\*.jpg');
load CohonExp6.txt;
f6 = CohonExp6;

for p = 1:length(myFile6)
    filename = strcat('F:\cse497 Thesis\Cohn\SixExpressionLast3Images\', myFile6(p).name);
    img = imread(filename);
    img_lbp = LBP(img);
    for q = 1:256
        count = 0;
        r = size(img_lbp,1);
        c = size(img_lbp,2);

        for i = 2:r-1
            for j = 2:c-1
                if img_lbp(i,j) == q-1
                    count = count+1;
                end
            end
        end
        exp_6(p,q) = count;
        
    end
    exp_6(p,257) = f6(p,2)+1;
end

%Part: Writing into text file for SVM%

A = size(exp_6,1);
B = size(exp_6,2);

Eid=fopen('MyFile6.txt','w');

for i = 1:A
    fprintf(Eid, '%d ', [exp_6(i,257)]);
    for j=1:B-1
        fprintf(Eid, '%d:%d ', [ j-1 exp_6(i,j)]);
    end
    fprintf(Eid, '\n');
end
        
fclose(Eid);
%Section END%



%Reading 7 Expression and performing LBP count%
%exp_7 variable displays the counted values%
%writing file from LBP count for SVM%
%Section START%

myFile7 = dir('F:\cse497 Thesis\Cohn\SevenExpression(N+Last3)\*.jpg');
load CohonExp7.txt;
f7 = CohonExp7;


for p = 1:length(myFile7)
    filename = strcat('F:\cse497 Thesis\Cohn\SevenExpression(N+Last3)\', myFile7(p).name);
    img = imread(filename);
    img_lbp = LBP(img);
    for q = 1:256
        count = 0;
        r = size(img_lbp,1);
        c = size(img_lbp,2);

        for i = 2:r-1
            for j = 2:c-1
                if img_lbp(i,j) == q-1
                    count = count+1;
                end
            end
        end
        exp_7(p,q) = count;
        
    end
    exp_7(p,257) = f7(p,2)+1;
end

%Part: Writing into text file for SVM%
A = size(exp_7,1);
B = size(exp_7,2);

Eid=fopen('MyFile7.txt','w');

for i = 1:A
    fprintf(Eid, '%d ', [exp_7(i,257)]);
    for j=1:B-1
        fprintf(Eid, '%d:%d ', [ j-1 exp_7(i,j)]);
    end
    fprintf(Eid, '\n');
end
        
fclose(Eid);

%Section END%