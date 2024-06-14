% Př. 15: Při průzkumu bylo zjištěno, že 82 lidí z 1000 by 
% volilo Stranu mírného pokroku v mezích zákona. Strana 
% vyhlašuje, že by jí volilo 15 % lidí. Lze na hladině 
% významnosti 5 % její tvrzení potvrdit?
p = 82/1000;
pr = 0.15;
n = 1000;

T = (p-pr)*sqrt(n)/sqrt(pr*(1-pr));
Pval = 2*normcdf(T,0,1);
