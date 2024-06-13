% Př. 5: Pětkrát hodíme mincí. Určete pravděpodobnost, 
% že orel padne právě dvakrát. Určete pravděpodobnost, 
% že padne alespoň 4.
binopdf(2,5,0.5);
1-binocdf(3.5,5,0.5);

% Př. 5a: Pravděpodobnost, že ve sportce uhádnu první cenu je 
% 1/13983816 Vypočtěte pravděpodobnost, že když vsadím 
% za rok 1000x, že vyhraji právě dvakrát první cenu.
binopdf(2,1000,1/13983816);

% Př. 5b:
% Zásilka obsahuje 80 % kvalitních a 20 % nekvalitních výrobků. 
% Náhodně s vracením vybereme 5 výrobků. Určete 
% pravděpodobnost, že:
% a) právě 3 budou kvalitní,
binopdf(3,5,0.8);
% b) alespoň 3 budou kvalitní,
1-binocdf(2.5,5,0.8);

% Př. 6: Pravděpodobnost narození děvčete je 0.49. 
% Určete pravděpodobnost, že ve třídě mající 25 dětí bude 
% (neuvažujte jednopohlavní třídy):
% Právě 10 dívek,
binopdf(10,25,0.49);
% Alespoň 10 a více dívek,
1-binocdf(9.5,25,0.49);
% Více než 15 dívek,
1-binocdf(15.5,25,0.49);
% Kolik dívek bude ve třídě nejpravděpodobněji.
[MN,var] = binostat(25,0.49); % 12 dívek

% Př. 7: Pravděpodobnost narození chlapce je 0.51. 
% Určete minimální počet dětí, aby pravděpodobnost, že 
% mezi nimi bude alespoň jeden chlapec, byla větší než 0.99.
1-binocdf(0,7,0.51);


% Př. 8: Víme, že mezi výrobky je 10 % vadných. Určete 
% pravděpodobnost, že u 20 náhodně vybraných výrobků bude:
% právě 0 vadných
binopdf(0,20,0.1);
%  více než 5 ks vadných.
1-binocdf(5.5,20,0.1);

% Př. 8a: Mějme mariášové karty (32 karet, které obsahují 4 esa, 
% 4 krále, 4 filky,…, 4 sedmičky). Losujete karty z balíčku 
% a vracíte je zpět. Určete pravděpodobnost, že z prvních 
% 7 vylosovaných karet dostanete právě 4 esa nebo krále. A 
% poslední osmá vylosovaná karta bude 7.  
binopdf(4,7,8/32)*4/32;

