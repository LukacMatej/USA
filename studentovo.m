% Př. 25: Určete pravděpodobnost, že Studentovo rozdělení
% s 2, 4, 10, 100 stupni volnosti nabývá P(X>1)
% . Určete pravděpodobnost i pro normované normální rozdělení. 
1-tcdf(1,2);
1-tcdf(1,4);
1-tcdf(1,10);
1-tcdf(1,100);
1-normcdf(1,0,1);

% Př. 26: Zjistěte 5 a 95% kvantil Studentova rozdělení 
% s 10 stupni volnosti.
tinv(0.05,10);
tinv(0.95,10);