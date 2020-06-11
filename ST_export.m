
i=1;
for j=100-Nu+1:100
string=['DMC_K1[' int2str(i) ']:=' num2str(K1(1,j)) '; '];
i=i+1;
K1(1,j);
fprintf(string);
end

i=1;
for j=100-Nu+1:100
string=['DMC_K2[' int2str(i) ']:=' num2str(K1(2,j)) '; '];
i=i+1;
K1(1,j);
fprintf(string);
end







Kb=K*Mp;
[i j]=size(Kb);

i=1;
for iti=1:i
    for itj=1:j
string=['DMC_K_Mp[' int2str(i) ']:=' num2str(Kb(iti,itj)) '; '];
i=i+1;


fprintf(string);
    end
end

