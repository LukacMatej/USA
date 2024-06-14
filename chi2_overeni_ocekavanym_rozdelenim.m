% Př. 9.7: V souboru P0907.xlsx máte data o poruchách výrobku. Zjistěte na hladině významnosti 5 %, zda data jsou z exponenciálního rozdělení. Ověřte, že data jsou z toho rozdělení i na základě Weibullova papíru (funkce wblplot)
% data = readmatrix('P0907.xlsx');
% data = data(:,1);
vstup=importdata('P0907.xlsx');
%v�sledky ve form� struktury, vstupy jsou ulo�eny jako data a d�le v listu1
x=vstup.List1(:,1);
[h,p,stats]=chi2gof(x,'cdf',{@expcdf,mean(x)});