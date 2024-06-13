% Př. 10: Vypočtěte pravděpodobnost, že z 32 karetního 
% balíčku budou při vylosování 3 karet právě 2 esa. Jak se 
% změní pravděpodobnost, jestliže karty do balíčku vracíme a 
% pokud je nevracíme. 
% s vracením
binopdf(2,3,4/32);
% bez vracení
hygepdf(2,32,4,3);

% Př. 11: V loterii je v osudí 200 čísel, z nichž se losuje 30. 
% Jaká je pravděpodobnost, že vybereme-li náhodně 10 čísel, 
% bude z nich právě 5 vylosovaných. Řešte 
% Pomocí hypergeometrického rozdělení,
hygepdf(5,200,30,10);
% Aproximací na binomického rozdělení,
binopdf(5,10,30/200);
% Kolik čísel uhádneme nejpravděpodobněji.
hygestat(200,30,10);

% Př. 12: Vypočtěte pravděpodobnost, že při výběru 10 karet z 
% 32 karetního balíčku bude právě 8 vyšších karet 
% (spodek, filek, král nebo eso). Balíček obsahuje 4 
% spodky, 4 filky, 4 krále a 4 esa.

% Řešte pomocí hypergeometrického rozdělení, za předpokladu, že karty nevracíte.
hygepdf(8,32,16,10);
% Řešte pomocí binomického rozdělení, za předpokladu, že karty vracíte.
binopdf(8,10,16/32);
% Odůvodněte rozdíl mezi výše uvedenými výsledky.

% Př. 12a: V osudí je 10000 bílých a 7000 černých koulí. 
% Losujete z nich 30 koulí. Jaká je pravděpodobnost, že 
% vylosujete právě 22 bílých a 8 černých. Odůvodněte 
% prakticky shodnost výsledků. 
hygepdf(22,17000,10000,30);
hygepdf(8,17000,7000,30);


