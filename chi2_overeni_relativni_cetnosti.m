% Př. 1: Bylo provedeno 50 hodů šestistěnnou kostkou s výsledky: 1 – 11x, 2 – 8x, 3 – 14x, 4 – 5x, 5 – 7x, 6 -5x. Zjistěte, zda přijmete na hladině významnosti 5 % hypotézu, že pravděpodobnost padnutí každého z čísel je 1/6. 

x = [1,2,3,4,5,6];
freq = [11,8,14,5,7,5];
hranice = [0.5,1.5,2.5,3.5,4.5,5.5,6.5];
[h,p,stats] = chi2gof(x,'expected',[50/6,50/6,50/6,50/6,50/6,50/6],'frequency',freq);