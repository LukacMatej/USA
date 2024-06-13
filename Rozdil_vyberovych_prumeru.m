% Př. 15: V roce 2015 a 2016 probíhal průzkum ohledně 
% měsíčních výdajů za pivo. Zjistěte pravděpodobnost, 
% že v roce 2016 dávají lidé za pivo více než v roce 2015.   
x2015=[587,124,651,1212,1074,523,273,800,485,961,1683,2411];
x2016=[121,524,2612,847,1310,1521,951,1000,521,12,190,263,321,587,953];

mu2015=mean(x2015);
mu2016=mean(x2016);
sigma2015=var(x2015);
sigma2016=var(x2016);
pravd=1-normcdf(0,mu2016-mu2015,sqrt(sigma2015/length(x2015)+sigma2016/length(x2016)));


% Př. 17: Zeptali jsme se 1000 respondentů na oblibu místního 
% cholerického politika. Obdrželi jsme kladný výsledek od 168
%  respondentů. Místní cholerický politik však říká, že jeho
%  obliba je 55 procent. Určete pravděpodobnost, že jeho
%  tvrzení je pravdivé a jeho obliba je 55 %.


