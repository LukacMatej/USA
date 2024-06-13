% Př. 7: Mějme následující data, kde první řádek představuje 
% hodnotu parametru před tepelnou úpravou (vzorek 1, řádek 1) 
% a v druhém řádku jsou uvedeny výsledky na stejných kusech po 
% tepelné úpravě (vzorek 2, řádek 2). Data jsou z normálního 
% rozdělení. Zjistěte na hladině významnosti 5 %, zda: 

x=[35.0,36.0,36.3,36.8,37.2,37.6,38.3,39.1,39.3,39.6,39.8;37.2,38.1,38.2,37.9,37.6,38.3,39.2,39.4,39.7,39.9,39.9];

[h,p,ci,stats] = ttest(x(1,:),x(2,:),0.05,'both');
[h,p,ci,stats] = ttest(x(1,:),x(2,:),0.05,'left');