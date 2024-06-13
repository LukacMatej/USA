% Př. 3: Vygenerujte 10000 čísel z normálního rozdělení s 
% parametry N(μ=5;σ2=4) a vyneste je do grafu 
% ve formě histogramu o 100 sloupcích. Do druhého 
% obdobného grafu vyneste vygenerovaných 10000 čísel z 
% normálního rozdělení s parametry N(μ=-5;σ2=4). 
% Odhadněte, jaké parametry bude mít rozdělení,
% jestliže hodnoty sečtete. Ověřte výpočtem správnost 
% Vašeho řešení. 

x = normrnd(5,sqrt(4),10000,1);
histogram(x,100);

x = normrnd(-5,sqrt(4),10000,1);
histogram(y,100);

p = x - y;
histogram(p,100);

